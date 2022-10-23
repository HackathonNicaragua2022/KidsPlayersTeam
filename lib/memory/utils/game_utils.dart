import 'package:flutter/material.dart';

class Game {
  final Color hiddenCard = Colors.red;
  List<Color>? gameColors;
  List<String>? gameImg;
  List<Color> cards = [
    Colors.purple,
    Colors.yellow,
    Colors.yellow,
    Colors.purple,
    Colors.blue,
    Colors.blue
  ];
  final String hiddenCardpath = "assets/images/hidden.png";
  List<String> cards_list = [
    "assets/images/purple-circle.png",
    "assets/images/triangle.png",
    "assets/images/purple-circle.png",
    "assets/images/heart.png",
    "assets/images/star.png",
    "assets/images/triangle.png",
    "assets/images/star.png",
    "assets/images/heart.png",
  ];
  final int cardCount = 8;
  List<Map<int, String>> matchCheck = [];

  //methods
  void initGame() {
    gameColors = List.generate(cardCount, (index) => hiddenCard);
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
