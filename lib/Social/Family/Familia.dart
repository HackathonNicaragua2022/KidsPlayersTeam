import 'package:flutter/material.dart';

import 'package:rive/rive.dart';
import 'package:lottie/lottie.dart';

class familia extends StatelessWidget{
  const familia ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: new AssetImage('assets/img/1.png'), fit: BoxFit.cover,),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                key: key,
                children:<Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 340,
                          height: 300,
                          margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: SingleChildScrollView(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 0.0, bottom: 5.0),
                                  child: const Text("Familia", style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Fredoka One",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                  ),),
                                ),
                                Container(

                                  child: Text(
                                      'En el siguiente juego tendras que hacer dinamicas '
                                          'con las palabras que aparezcan en pantalla'
                                      , style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Fredoka One",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  )
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  child: ElevatedButton( key: key,
                                    onPressed: ( ) {Navigator.pushNamed(context, 'tres');},
                                    child: Text('Comenzar'),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        onPrimary: Color(0xff3914AF),
                                        shadowColor: Colors.black54,
                                        elevation: 10
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 350,
                          height: 380,

                          child: Lottie.asset('assets/img/27477-family-love.json')
                      )
                    ],
                  )
                ]
            )
          ],
        )
    );
  }


}