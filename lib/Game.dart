import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:lottie/lottie.dart';

class diversion extends StatelessWidget {
  const diversion ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width:  MediaQuery.of(context).size.width,
              height:  MediaQuery.of(context).size.height,
              child:  const RiveAnimation.asset('assets/img/2082-4109-i-followed-the-video.riv', fit: BoxFit.cover,)
          ),
          Container(
            width:600,
            margin: const EdgeInsets.only(left: 60.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 220,
                        height: 300,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  child: Lottie.asset('assets/img/90428-fist-bump.json'),
                                ),

                                Container(
                                  width: 120,
                                  height: 120,
                                  child: ElevatedButton(
                                    onPressed:( ) {Navigator.pushNamed(context, 'amg');},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,

                                    ),
                                    child: null, ),
                                )
                              ],
                            ),
                            const Text("Amigos", style: TextStyle(
                              fontSize: 30,
                              fontFamily: "bonita",
                              color: Colors.black,
                            ),)
                          ],
                        )
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          child: Lottie.asset('assets/img/107872-family-hug.json'),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          child: ElevatedButton(
                            onPressed:( ) {Navigator.pushNamed(context, 'fam');},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),

                            child: null, ),
                        )
                      ],
                    ),
                    const Text("Familia", style: TextStyle(
                      fontSize: 30,
                      fontFamily: "bonita",
                      color: Colors.black,
                    ),)
                  ],

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          child: Lottie.asset('assets/img/22469-campus-library-school-building-office-mocca-animation.json'),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          child: ElevatedButton(
                            onPressed:( ) {Navigator.pushNamed(context, 'school');},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),

                            child: null, ),
                        )
                      ],
                    ),
                    const Text("Escuela", style: TextStyle(
                      fontSize: 30,
                      fontFamily: "bonita",
                      color: Colors.black,
                    ),)
                  ],

                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}

