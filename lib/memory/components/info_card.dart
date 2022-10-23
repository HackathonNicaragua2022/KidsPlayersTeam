
import 'package:flutter/material.dart';


Widget info_card(String title, String info) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            info,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
