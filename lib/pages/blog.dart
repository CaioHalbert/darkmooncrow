import 'package:darkmooncrow/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
