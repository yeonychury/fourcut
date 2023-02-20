import 'package:flutter/material.dart';

TextStyle Lee({
  Color color = Colors.white,
  double fontSize = 16,
  double fontHeight = 1.25,
  FontWeight fontWeight = FontWeight.w400,
}) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    height: fontHeight,
    fontFamily: 'Lee',
  );
}
