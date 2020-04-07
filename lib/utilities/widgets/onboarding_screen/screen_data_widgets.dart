import 'package:flutter/material.dart';

List<Widget> screenData(int numOfPages, screenContent) {
  List<Widget> list = [];

  for (int i = 0; i < numOfPages; i++) {
    try {
      list.add(getScreenData(screenContent[i], i));
    } catch (e) {
      print("You should provide enough content for all screens");
    }
  }
  return list;
}

Widget getScreenData(Map<String, String> screenContent, i) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Image(
            image: AssetImage(
              screenContent["Scr ${i + 1} Image Path"].toString(),
            ),
            height: 300.0,
            width: 300.0,
          ),
        ),
        SizedBox(height: 30.0),
        Text(
          screenContent["Scr ${i + 1} Heading"].toString(),
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'CM Sans Serif',
            fontSize: 26.0,
            height: 1.5,
          ),
        ),
        SizedBox(height: 15.0),
        Text(
          screenContent["Scr ${i + 1} Sub Heading"].toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            height: 1.2,
          ),
        ),
      ],
    ),
  );
}
