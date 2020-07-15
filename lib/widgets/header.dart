import 'package:darkmooncrow/pages/blog.dart';
import 'package:darkmooncrow/pages/contato.dart';
import 'package:darkmooncrow/pages/equipamentos.dart';
import 'package:darkmooncrow/pages/galeria.dart';
import 'package:darkmooncrow/pages/home.dart';
import 'package:darkmooncrow/pages/sobre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Blog isAu;

bool isAuth = false;

//função que chama o login
login() {
  googleSignIn.signIn();
}

//função para logout
logout() {
  googleSignIn.signOut();
}


Drawer mobile(context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text(
            '',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/logon.png'))),
        ),
        ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            }),
        ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Sobre'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sobre()));
            }),
        ListTile(
            leading: Icon(Icons.add_comment),
            title: Text('Blog'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blog()));
            }),
        ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contato'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Contato()));
            }),
        ListTile(
            leading:
                isAuth ? Icon(Icons.arrow_back) : Icon(Icons.arrow_forward),
            title: isAuth ? Text('Sair') : Text('Login'),
            onTap: () => {isAuth ? logout : Navigator.push(
                context, MaterialPageRoute(builder: (context) => UnauthScreen()))},)
      ],
    ),
  );
}

AppBar deskTablet(context) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0.0,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          child: Text(
            "Sobre",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Sobre()));
          },
        ),
        GestureDetector(
          child: Text(
            "Equipamentos",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Equipamentos()));
          },
        ),
        GestureDetector(
          child: Text(
            "Galeria",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Galeria()));
          },
        ),
        GestureDetector(
          child: Text(
            "Blog",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Blog()));
          },
        ),
        GestureDetector(
          child: Text(
            "Contato",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Contato()));
          },
        ),
      ],
    ),
  );
}

class UnauthScreen extends StatefulWidget {
  UnauthScreen({Key key}) : super(key: key);

  @override
  _UnauthScreenState createState() => _UnauthScreenState();
}

class _UnauthScreenState extends State<UnauthScreen> {

  Scaffold buildUnauthScreen() {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Home.png'), fit: BoxFit.cover),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            Colors.red,
          ],
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "DARKMOONCROW",
            style: TextStyle(
              shadows: [
                Shadow(
                    // bottomLeft
                    offset: Offset(0.0, 0.0),
                    color: Colors.black),
                Shadow(
                    // bottomRight
                    offset: Offset(5.5, -1.5),
                    color: Colors.black),
              ],
              fontFamily: "Lora",
              fontSize: 90.0,
              color: Colors.white,
            ),
          ),
          Container(
            height: 250.0,
            width: 250.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  // vertical, move down 10
                  image: AssetImage('assets/images/logon.png'),
                  fit: BoxFit.cover),
            ),
          ),
          GestureDetector(
            onTap: login,
            child: Container(
              width: 260.0,
              height: 60.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/google_signin_button.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Container(
       child: buildUnauthScreen(),
    );
  }
}
