import 'package:darkmooncrow/pages/sobre.dart';
import 'package:flutter/material.dart';

import 'blog.dart';
import 'contato.dart';
import 'equipamentos.dart';

class Galeria extends StatelessWidget 
{
  const Galeria({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
              onTap: () 
              {
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
              onTap: () 
              {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Equipamentos()));
              },
            ),
            GestureDetector(
              child: Text(
                "Galeria",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18.0,
                ),
              ),
              onTap: () 
              {
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
              onTap: () 
              {
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
              onTap: () 
              {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Contato()));
              },
            ),
          ],
        ),
      ),
    );
  }
}