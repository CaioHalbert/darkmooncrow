import 'package:darkmooncrow/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Contato extends StatelessWidget 
{
  const Contato({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
//------------- Configuração de layout para Desktop ----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: deskTablet(context),
          body: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 40.0),
                color: Colors.white,
                child: Image(
                  image: AssetImage('assets/images/Contato.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 540.0,
                  height: 600.0,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 100.0, 10.0),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>
                       [
                         Text("CONTATO",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 80.0, fontFamily: "Lora"),
                         ),
                         Text("e",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 18.0),
                         ),
                         Text("Redes Sociais",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 22.0),
                         ),
                         Container
                         (
                           child: SizedBox
                           (
                              width: 530.0,
                              height: 400.0,
                             child: Container
                             (
                               padding: EdgeInsets.fromLTRB(10.0, 10.0, 30.0, 10.0),
                               decoration: BoxDecoration
                               (
                                 border: Border.all(color: Colors.black, width: 3)
                               ),
                               child: Column
                               (
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: <Widget>
                                 [
                                    Text("E-MAIL\ncontato.claudiarayara@gmail.com",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                    Text("INSTAGRAM\n@darkmooncrow",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                    Text("fACEBOOK\n@darkmooncrow",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ],
                    ),
                  ),
                ),
              ),
            ] 
          ),
        );
        
      }
//------------- Configuração de layout para Tablet -----------------------------

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) 
      {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: deskTablet(context),
          body: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 40.0),
                color: Colors.white,
                child: Image(
                  image: AssetImage('assets/images/Contato.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 540.0,
                  height: 600.0,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 100.0, 10.0),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>
                       [
                         Text("CONTATO",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 70.0, fontFamily: "Lora"),
                         ),
                         Text("e",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 18.0),
                         ),
                         Text("Redes Sociais",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 22.0),
                         ),
                         Container
                         (
                           child: SizedBox
                           (
                              width: 530.0,
                              height: 350.0,
                             child: Container
                             (
                               padding: EdgeInsets.fromLTRB(10.0, 10.0, 30.0, 10.0),
                               decoration: BoxDecoration
                               (
                                 border: Border.all(color: Colors.black, width: 3)
                               ),
                               child: Column
                               (
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: <Widget>
                                 [
                                    Text("E-MAIL\ncontato.claudiarayara@gmail.com",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                    Text("INSTAGRAM\n@darkmooncrow",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                    Text("fACEBOOK\n@darkmooncrow",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ],
                    ),
                  ),
                ),
              ),
            ] 
          ),
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
          drawer: mobile(context),
          body: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 540.0,
                  height: 600.0,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>
                       [
                         Text("CONTATO",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 70.0, fontFamily: "Lora"),
                         ),
                         Text("e",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 18.0),
                         ),
                         Text("Redes Sociais",
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 22.0),
                         ),
                         Container
                         (
                           child: SizedBox
                           (
                              width: 530.0,
                              height: 350.0,
                             child: Container
                             (
                               padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                               decoration: BoxDecoration
                               (
                                 border: Border.all(color: Colors.black, width: 3)
                               ),
                               child: Column
                               (
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: <Widget>
                                 [
                                    Text("E-MAIL\ncontato.claudiarayara@gmail.com",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                    Text("INSTAGRAM\n@darkmooncrow",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                    Text("fACEBOOK\n@darkmooncrow",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 18.0),
                                    ),
                                    
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ],
                    ),
                  ),
                ),
              ),
            ] 
          ),
        );
      }
    });
  }
}