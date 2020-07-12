import 'package:darkmooncrow/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'blog.dart';
import 'contato.dart';
import 'equipamentos.dart';
import 'galeria.dart';

class Sobre extends StatefulWidget {
  Sobre({Key key}) : super(key: key);

  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
//------------- Configuração de layout para Desktop ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
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
                      color: Colors.red,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sobre()));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Equipamentos()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Galeria()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Blog()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contato()));
                  },
                ),
              ],
            ),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 40.0),
                color: Colors.white,
                child: Image(
                  image: AssetImage('assets/images/Sobre.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 300.0,
                      height: 400.0,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 3),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Perfil.png'))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 450.0,
                      height: 400.0,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Claudia Rayara",
                                style: TextStyle(
                                  fontFamily: "Lora",
                                  fontSize: 35.0,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\nSão Paulo/SP - 2020",
                                  style: TextStyle(
                                    fontFamily: "overpass",
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\nAno: 2020 - Olá, me chamo Claudia Rayara, nascida em 94 e sou de São Paulo-SP. Uma assalariada, sem tempo, que curte diversos tipos de arte, extremamente amadora e sem nenhum tipo de formação na área artística, tampouco fiz algum curso, mas pretendo, são planos futuros. Então, todo conteúdo disponível no site são apenas para compartilhar informações que eu tenho ou vou vir a ter.",
                                  style: TextStyle(
                                    fontFamily: "overpass",
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }

//------------- Configuração de layout para Tablet ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
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
                      color: Colors.red,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sobre()));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Equipamentos()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Galeria()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Blog()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contato()));
                  },
                ),
              ],
            ),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 40.0),
                color: Colors.white,
                child: Image(
                  image: AssetImage('assets/images/Sobre.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 300.0,
                      height: 400.0,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 3),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Perfil.png'))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 450.0,
                      height: 400.0,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Claudia Rayara",
                                style: TextStyle(
                                  fontFamily: "Lora",
                                  fontSize: 35.0,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\nSão Paulo/SP - 2020",
                                  style: TextStyle(
                                    fontFamily: "overpass",
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\nAno: 2020 - Olá, me chamo Claudia Rayara, nascida em 94 e sou de São Paulo-SP. Uma assalariada, sem tempo, que curte diversos tipos de arte, extremamente amadora e sem nenhum tipo de formação na área artística, tampouco fiz algum curso, mas pretendo, são planos futuros. Então, todo conteúdo disponível no site são apenas para compartilhar informações que eu tenho ou vou vir a ter.",
                                  style: TextStyle(
                                    fontFamily: "overpass",
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }

//------------- Configuração de layout para Celular ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          drawer: Drawer(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Sobre'),
                  onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sobre()));
                    }
                ),
                ListTile(
                  leading: Icon(Icons.add_comment),
                  title: Text('Blog'),
                  onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Blog()));
                    }),
                ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text('Contato'),
                  onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contato()));
                    }),
              ],
            ),
          ),
            body: ListView
            (
              padding: EdgeInsets.all(5.0),
              children: <Widget>
              [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 300.0,
                      height: 400.0,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 3),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Perfil.png'))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 450.0,
                      height: 400.0,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Claudia Rayara",
                                style: TextStyle(
                                  fontFamily: "Lora",
                                  fontSize: 35.0,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\nSão Paulo/SP - 2020",
                                  style: TextStyle(
                                    fontFamily: "overpass",
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\nAno: 2020 - Olá, me chamo Claudia Rayara, nascida em 94 e sou de São Paulo-SP. Uma assalariada, sem tempo, que curte diversos tipos de arte, extremamente amadora e sem nenhum tipo de formação na área artística, tampouco fiz algum curso, mas pretendo, são planos futuros. Então, todo conteúdo disponível no site são apenas para compartilhar informações que eu tenho ou vou vir a ter.",
                                  style: TextStyle(
                                    fontFamily: "overpass",
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]
            )
          );
        }
      }
    );
  }
}
