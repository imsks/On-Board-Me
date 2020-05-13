import 'package:flutter/material.dart';

Widget skipButton({text: 'SKIP', homeRoute, context}) {
  return FlatButton(
    onPressed: () {
      /// This is where You will provide a root where user will land if Skip is pressed.
      try {
        Navigator.pushNamed(context, homeRoute);
      } catch (e) {
        print(e);
        print("Set homeRoute to the route where you want to land after on-boarding");
      }
    },
    child: Text(
      text.toString().toUpperCase(),
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
        letterSpacing: 2,
      ),
    ),
  );
}
