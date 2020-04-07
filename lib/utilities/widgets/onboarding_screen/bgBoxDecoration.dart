import 'package:flutter/material.dart';

Decoration bgBoxDecoration(List bgColor) {
  var noOfColors = bgColor.length;
  List<double> noOfParts = [];
  double temp = 0;
  for (int i = 0; i < noOfColors; i++) {
    temp = temp + 1 / noOfColors;
    noOfParts.add(temp);
  }
  return noOfColors == 1
      ? BoxDecoration(color: bgColor[0])
      : BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: noOfParts,
          colors: bgColor,
        ));
}
