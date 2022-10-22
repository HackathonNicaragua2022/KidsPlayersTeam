import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peckes_play/Social/Friend/Amigos.dart';
import 'package:peckes_play/Social/School/Compartir.dart';
import 'package:peckes_play/Social/School/Escuela.dart';
import 'package:peckes_play/Social/Family/Familia.dart';
import 'package:peckes_play/Game.dart';
import 'package:peckes_play/SecondScreen.dart';
import 'package:lottie/lottie.dart';
import 'package:peckes_play/GameSec1.dart';
import 'package:peckes_play/memory/MemoMain.dart';
import 'package:peckes_play/profileScreen.dart';
import 'package:peckes_play/tetris/Maintetris.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.leanBack,
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        'one': (context) => FirstScreen(),
        'two': (context) => SecondScreen(),
        'games':(context)=> GameSec1(),
        'maintetris': (context) => Maintetris(),
        'success': (context)=>ProfileScreen(),
        'memoMain':(context)=> MemoMain(),
        'fam' : (context)  => familia(),
        'amg' : (context)  => amigos(),
        'school' : (context)  => Escuela(),
        'tres' : (context)  => diversion(),
        'comp' : (context)  => Compartir(),
      },
      initialRoute: 'one',
      home: FirstScreen()
    );
  }
}


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            Container(
              child: Lottie.asset('assets/img/burble.json'),

            ),
            Row( key: key,
                children:<Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 340,
                          height: 250,
                          //margin: const EdgeInsets.only(left: 190.0),
                          child:
                          Container(

                            child: Image.asset('assets/img/Logo.png', width: 50, height: 150,) ,
                          )

                      )
                    ],
                  ),


                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 360,
                          height: 360,
                          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                                child: const Text(

                                  '¡¡Vamos a divertinos!!',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Fredoka One",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0,

                                  ),
                                ),
                              ),

                              Container(
                                  width: 150,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  child:
                                  ElevatedButton( key: key,
                                    onPressed: ( ) {Navigator.pushNamed(context, 'two');},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.amber,
                                        shadowColor: Colors.black54,

                                        elevation: 10
                                    ),
                                    child: const Text('Inicio'),

                                  )),
                            ],
                          ),
                        )
                      ]
                  )

                ]
            ),
          ],
          )


        )// This trailing comma makes auto-formatting nicer for build methods.
    ;
  }
}
