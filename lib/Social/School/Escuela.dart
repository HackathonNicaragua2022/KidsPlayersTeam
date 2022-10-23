import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';
import 'package:rive/rive.dart';
import 'package:lottie/lottie.dart';
class Escuela extends StatelessWidget {
  const Escuela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage('assets/img/2.png'),
                  fit: BoxFit.cover,),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                key: key,
                children: <Widget>[
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
                                  margin: const EdgeInsets.only(top: 0.0,
                                      bottom: 5.0),
                                  child: const Text("Escuela", style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Fredoka One",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                  ),),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(top: 0.0,
                                      bottom: 10.0),
                                  child: Text(
                                      'Recuerda tienes que hacer dinamicas con las palabras que se presentan en pantalla'
                                      , style: TextStyle(
                                    color: Colors.indigo,
                                    fontFamily: "Fredoka One",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                  )
                                  ),

                                ),
                                Container(
                                  width: 170,
                                  height: 70,
                                  margin: const EdgeInsets.only(top: 10.0,
                                      bottom: 10.0),
                                  child: ElevatedButton(key: key,
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'comp');
                                    },
                                    child: Text('Comenzar'),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.lightBlue,
                                        onPrimary: Color(0xff3914AF),
                                        shadowColor: Colors.white,
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

                          child: Lottie.asset(
                              'assets/img/22469-campus-library-school-building-office-mocca-animation.json')
                      )
                    ],
                  )
                ]
            )
          ],
        )
    );
  }

  Future<void> _soundbotton() async {
    Soundpool pool = Soundpool(streamType: StreamType.notification);

    int soundId = await rootBundle.load("assets/audios/drop.mp3").then((ByteData soundData) {
      return pool.load(soundData);
    });
    int streamId = await pool.play(soundId);
  }
}

