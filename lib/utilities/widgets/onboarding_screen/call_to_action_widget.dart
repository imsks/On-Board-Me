import 'package:flutter/material.dart';

Widget callToAction({text = 'Get Started', homeRoute, context}) {
  return Container(
    height: 70,
    width: double.infinity,
    color: Colors.white,
    child: GestureDetector(
      onTap: () {
        try {
          Navigator.pushNamed(context, homeRoute);
        } catch (e) {
          print(e);
          print("Set homeRoute to the route where you want to land after on-boarding");
        }
      },
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xFF5B16D0),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
