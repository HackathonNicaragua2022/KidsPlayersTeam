import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';
import 'package:rive/rive.dart';
import 'package:lottie/lottie.dart';
class Compartir extends StatelessWidget {
  const Compartir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage('assets/img/1.png'),
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
                                  margin: const EdgeInsets.only(top: 60.0,
                                      bottom: 50.0),
                                  child: const Text("Compartir", style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Fredoka One",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 55.0,
                                  ),),
                                ),
                                Container(
                                  width: 170,
                                  height: 70,
                                  margin: const EdgeInsets.only(top: 10.0,
                                      bottom: 10.0),
                                  child: ElevatedButton(key: key,
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'tres');
                                    },
                                    child: Text('Comenzar'),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
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
                          height: 300,

                          child: Lottie.asset(
                              'assets/img/sun.json')
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
