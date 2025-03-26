import 'package:flutter/material.dart';

Color bgColor() {
  return const Color(0xFF212123);
}

Color textColor() {
  return const Color(0xFFFFFFFF);
}

TextStyle titleText(double fontsize) {
  return TextStyle(
    fontSize: fontsize,
    fontWeight: FontWeight.bold,
    color: textColor(),
    fontFamily: 'Roboto',
  );
}
