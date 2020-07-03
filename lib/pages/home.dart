import 'package:darkmooncrow/pages/blog.dart';
import 'package:darkmooncrow/pages/contato.dart';
import 'package:darkmooncrow/pages/equipamentos.dart';
import 'package:darkmooncrow/pages/galeria.dart';
import 'package:darkmooncrow/pages/sobre.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  const Home({Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) 
  {
    bool _isFone = false;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    getWindowSize()
    {
      if (_width < 400.0 && _height < 800)
      {
        setState(() 
        {

        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ,
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
                    'DarkMoonCrow',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 60.0,
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
}
