import 'package:darkmooncrow/pages/blog.dart';
import 'package:darkmooncrow/pages/contato.dart';
import 'package:darkmooncrow/pages/equipamentos.dart';
import 'package:darkmooncrow/pages/galeria.dart';
import 'package:darkmooncrow/pages/home.dart';
import 'package:darkmooncrow/pages/sobre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
