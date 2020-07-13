import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darkmooncrow/widgets/header.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:responsive_builder/responsive_builder.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
final StorageReference storageRef = FirebaseStorage.instance.ref();
final usersRef = Firestore.instance.collection("users");
final postRef = Firestore.instance.collection("posts");
final commentsRef = Firestore.instance.collection("comments");

class Blog extends StatelessWidget {
  const Blog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
//------------- Configuração de layout para Desktop ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: deskTablet(context)
        );
      }
//------------- Configuração de layout para Tablet -----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) 
      {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: deskTablet(context)
        );
      }

//------------- Configuração de layout para celular ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) 
      {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          drawer: mobile(context)
        );
      }
    });
  }
}
