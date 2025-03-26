import 'package:flutter/material.dart';
import 'package:todo/constant/const.dart';

ThemeData themeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: bgColor()),
    useMaterial3: true,
    scaffoldBackgroundColor: bgColor(),
  );
}
