import 'package:darkmooncrow/pages/blog.dart';
import 'package:darkmooncrow/pages/contato.dart';
import 'package:darkmooncrow/pages/equipamentos.dart';
import 'package:darkmooncrow/pages/galeria.dart';
import 'package:darkmooncrow/pages/sobre.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
//------------- Configuração de layout para Desktop ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return Scaffold(
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
                  image: AssetImage('assets/images/Home.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 540.0,
                  height: 270,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(alignment: Alignment.center, children: <Widget>[
                  SizedBox(
                    width: 530.0,
                    height: 242.0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            image: DecorationImage(
                              image: AssetImage('assets/images/banner.png'),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 530.0,
                      height: 240.0,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'DARKMOONCROW',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50.0,
                          fontFamily: "Lora",
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        );
      }

//------------- Configuração de layout para smartfone --------------------------

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
          body: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Image(
                  image: AssetImage('assets/images/Home.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 540.0,
                  height: 270,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(alignment: Alignment.center, children: <Widget>[
                  SizedBox(
                    width: 530.0,
                    height: 242.0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            image: DecorationImage(
                              image: AssetImage('assets/images/banner.png'),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 530.0,
                      height: 240.0,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'DarkMoonCrow',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0,
                          fontFamily: "Lora",
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        );
      }

//------------- Configuração de layout para Tablet -----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return Scaffold(
          appBar: AppBar(
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
                  image: AssetImage('assets/images/Home.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 540.0,
                  height: 270,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(alignment: Alignment.center, children: <Widget>[
                  SizedBox(
                    width: 530.0,
                    height: 242.0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            image: DecorationImage(
                              image: AssetImage('assets/images/banner.png'),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 530.0,
                      height: 240.0,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'DARKMOONCROW',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50.0,
                          fontFamily: "Lora",
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        );
      }
    });
  }
}
