import 'package:darkmooncrow/pages/home.dart';
import 'package:flutter/material.dart';

void main() 
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark Moon Crow',
      theme: ThemeData(
        fontFamily: 'overpass',
        primaryIconTheme: IconThemeData(color: Colors.black),
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        //focusColor: Colors.black,
      ),
      home: Home(),
    );
  }
}
