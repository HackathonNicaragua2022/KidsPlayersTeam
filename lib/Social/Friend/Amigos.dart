import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:lottie/lottie.dart';

class amigos extends StatelessWidget{
  const amigos ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: new AssetImage('assets/img/4.png'), fit: BoxFit.cover,),
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
                                  child: const Text("Amigos", style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Fredoka One",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                  ),),
                                ),
                                Container(

                                  child: Text(
                                      'Recuerda! '
                                          'Tienes que socializar con los que te rodean, los amigos son parte importante para tu crecimiento. '
                                           'Siempre habrá niños a tu alrededor, pero no te asustes, es normal'
                                          'Juega con todos, diviertete, disfruta y haz más amigos'
                                 , style: TextStyle(
                                      color: Colors.white,
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
                                    child: Text('Regresar'),
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
                          height: 360,

                          child: Lottie.asset('assets/img/78740-baby-girl.json')
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