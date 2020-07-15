import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darkmooncrow/models/user.dart';
import 'package:darkmooncrow/widgets/header.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'create_account.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
final StorageReference storageRef = FirebaseStorage.instance.ref();
final usersRef = Firestore.instance.collection("users");
final postRef = Firestore.instance.collection("posts");
final commentsRef = Firestore.instance.collection("comments");
final activityFeedRef = Firestore.instance.collection("feed");

User currentUser;

final DateTime timestamp = DateTime.now();

class Blog extends StatefulWidget {
  bool isAuth = false; // variavel para verificar autenticação do usuario

  Blog({this.isAuth});

  @override
  _BlogState createState() => _BlogState(isAuth: this.isAuth);
}

class _BlogState extends State<Blog> {
  bool isAuth = false;

  _BlogState({this.isAuth});

  PageController pageController; // variavel que controla o fluxo de paginas

  @override
  //autentica o usuario
  void initState() {
    super.initState();
    pageController = PageController();

    googleSignIn.onCurrentUserChanged.listen((account) {
      handleSignIn(account);
    }, onError: (err) {
      print('Error on signin $err');
    });
    // reautentica o usuario ao abrir o app
    googleSignIn.signInSilently(suppressErrors: false).then((account) {
      handleSignIn(account);
    }).catchError((err) {
      print('Error on signin $err');
    });
  }

  handleSignIn(GoogleSignInAccount account) async {
    if (account != null) {
      await createUserInFirestore();
      setState(() {
        isAuth = true;
      });
    } else {
      setState(() {
        isAuth = false;
      });
    }
    return isAuth;
  }

  createUserInFirestore() async {
    // verificar se o usuario existe no banco
    final GoogleSignInAccount user = googleSignIn.currentUser;
    DocumentSnapshot doc = await usersRef.document(user.id).get();

    // se o usuario não existir, criar uma conta para ele
    if (!doc.exists) {
      final username = await Navigator.push(
          context, MaterialPageRoute(builder: (context) => CreateAccount()));

      // buscar o nome do usuario e criar uma nova coleção para esse usuario
      usersRef.document(user.id).setData({
        "id": user.id,
        "username": username,
        "photoUrl": user.photoUrl,
        "email": user.email,
        "displayName": user.displayName,
        "timestamp": timestamp,
      });
      // cria um usuario baseado em si para adicionar as proprias postagens na timeline
    }

    currentUser = User.fromDocument(doc);

    print(currentUser);
    print(currentUser.username);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
//------------- Configuração de layout para Desktop ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return Scaffold(
            backgroundColor: Colors.white, appBar: deskTablet(context));
      }
//------------- Configuração de layout para Tablet -----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return Scaffold(
            backgroundColor: Colors.white, appBar: deskTablet(context));
      }

//------------- Configuração de layout para celular ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
            ),
            drawer: mobile(context));
      }
    });
  }
}
