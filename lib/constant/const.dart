import 'package:flutter/material.dart';

Color bgColor() {
  return const Color(0xFF212123);
}

Color textColor() {
  return const Color(0xFFFFFFFF);
}

Color btnBgColor() {
  return const Color(0xFF3A44D1);
}

TextStyle titleText(double fontsize) {
  return TextStyle(
    fontSize: fontsize,
    fontWeight: FontWeight.bold,
    color: textColor(),
    fontFamily: 'Roboto',
  );
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.sizeOf(context).height;
}
