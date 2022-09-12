import 'dart:ui';

import 'package:flutter/material.dart';

Color primary = Colors.amber;

class Styles {
  static Color praimaryColor = primary;
  static Color textColor = const Color(0xFf3b3b3b);
  static Color bgColor = const Color(0xFf3b3b3b);
  static TextStyle textStyle =
      TextStyle(color: textColor, fontSize: 30, fontWeight: FontWeight.bold);
  //head line
  static TextStyle headLine1 =
      TextStyle(color: textColor, fontSize: 96, fontWeight: FontWeight.w300);
  static TextStyle headLine2 =
      TextStyle(color: textColor, fontSize: 60, fontWeight: FontWeight.w300);
  static TextStyle headLine3 =
      TextStyle(color: textColor, fontSize: 43, fontWeight: FontWeight.w400);
  static TextStyle headLine4 =
      TextStyle(color: textColor, fontSize: 34, fontWeight: FontWeight.w400);
  static TextStyle headLine5 =
      TextStyle(color: textColor, fontSize: 24, fontWeight: FontWeight.w400);
  static TextStyle headLine6 =
      TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w500);
}
