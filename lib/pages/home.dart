import 'package:darkmooncrow/widgets/header.dart';
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
          appBar: deskTablet(context),
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
          drawer: mobile(context),
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
          appBar: deskTablet(context),
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
