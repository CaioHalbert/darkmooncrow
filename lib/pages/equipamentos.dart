import 'package:darkmooncrow/pages/sobre.dart';
import 'package:flutter/material.dart';

import 'blog.dart';
import 'contato.dart';
import 'galeria.dart';

class Equipamentos extends StatelessWidget 
{
  const Equipamentos({Key key}) : super(key: key);

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
                  color: Colors.red,
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
                  color: Colors.black,
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
      body: Stack
      (
        children: <Widget>
        [
          Container
          (
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 40.0),
            color: Colors.white,
            child: Image
            (
              image: AssetImage('assets/images/Equipamentos.png'),
              fit: BoxFit.cover,
            ),
          ),
          Align
          (
            alignment: Alignment.center,
            child: Column(
              children: <Widget>
              [
                Text
                (
                  "Equipamentos",
                  style: TextStyle
                  (
                    fontFamily: "Lora",
                    fontSize: 45.0,
                  ),
                ),
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>
                  [
                    // ------------------- Lado Esquerdo -----------------------
                    SizedBox
                    (
                      width: 350.0,
                      height: 450.0,
                      child: Container
                      (
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        
                        child: Container
                        (
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration
                          (
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 3),
                          ),
                          child: Column
                          (
                            children: <Widget>
                            [
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>
                                [
                                  SizedBox
                                  (
                                    width: 120,
                                    height: 180,

                                  child: Container
                                  (
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration
                                    (
                                      
                                      color: Colors.white,
                                      image: DecorationImage(image: AssetImage('assets/images/iPad.png')),
                                    ),
                                  ),
                                  ),
                                  SizedBox
                                  (
                                    width: 195,
                                    child: Container
                                    (
                                      alignment: Alignment.centerLeft,
                                      
                                      child: Text
                                      (
                                        
                                        "iPad: Modelo - Mini 3.\nNão foi comprado, eu ganhei a alguns bons anos atrás, não tem muito o que dizer e nem o que indicar porque o aparelho já está defasado, além de não ser possível comprar em lojas oficiais, o aparelho não faz mais a atualizações iOS.",
                                        style: TextStyle
                                        (
                                          fontFamily: "overpass",
                                          fontSize: 11.0,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>
                                [
                                  SizedBox
                                  (
                                    width: 225,
                                    child: Container
                                    (
                                      alignment: Alignment.centerLeft,
                                      
                                      child: Text
                                      (
                                        "Caneta: 3 Gen – Universal Smart Stylus.\nComprada no AliExpress em Novembro-2019, custou em torno de 80 reais. É um equipamento bom, a ponta é fina, existe a necessidade de ser carregada, não tem palm rejection, e para usar basta ligar e começar a desenhar. Segundo a descrição do vendedor, ela é universal, funciona  em qualquer tablet.",
                                        style: TextStyle
                                        (
                                          fontFamily: "overpass",
                                          fontSize: 11.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox
                                  (
                                    width: 50,
                                    height: 180,

                                  child: Container
                                  (
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration
                                    (
                                      
                                      color: Colors.white,
                                      image: DecorationImage(image: AssetImage('assets/images/Caneta.png')),
                                    ),
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //--------------------------- lado DIreito ----------------------
                    SizedBox
                    (
                      width: 350.0,
                      height: 450.0,
                      child: Container
                      (
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        
                        child: Container
                        (
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration
                          (
                            
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 3),
                          ),
                          child: Column
                          (
                            mainAxisAlignment: MainAxisAlignment.center,
                  
                            children: <Widget>
                            [
                              SizedBox
                              (
                                width: 200,
                                height: 150,

                              child: Container
                              (
                                alignment: Alignment.center,
                                
                                decoration: BoxDecoration
                                (
                                  
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage('assets/images/Gaomon 01.png')),
                                ),
                              ),
                            ),
                            SizedBox
                            (
                              width: 280,
                              height: 150,
                              child: Text("Pen Display Tablet: Marca – Gaomon | Modelo – PD1161.\n\nComprado no AliExpress em Maio-2020, custou em torno de 1.050,00 reais. Eu achei a aquisição ótima, é um equipamento bem completo, tem 11.6 polegadas, a área de trabalho é de mais ou menos 25cm x 14cm e a resolução é de 1920x1080, existem 8 botões laterais para salvar comandos, e mais dois na caneta, que não tem bateria, então não existe a necessidade de ser carregada. A mesa replica a tela do computador e você consegue desenhar diretamente nela usando os Softwares instalados na sua máquina.",
                              style: TextStyle
                              (
                                fontFamily: "overpass",
                                fontSize: 9.0,
                              ),),
                            ),
                            SizedBox
                              (
                                width: 340,
                                height: 120,

                              child: Container
                              (
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(0.0),
                                decoration: BoxDecoration
                                (
                                  
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage('assets/images/Gaomon 02.jpg')),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}