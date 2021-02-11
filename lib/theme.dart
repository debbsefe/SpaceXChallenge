import 'package:flutter/material.dart';

class CustomTheme {
  CustomTheme._();
  static const Color red = Color(0xFFFF003D);
  static const Color black56 = Color.fromRGBO(0, 0, 0, 0.56);
  static const Color black53 = Color.fromRGBO(0, 0, 0, 0.53);

  static const TextStyle headline3 =
      TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
  static const TextStyle headline4 =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400);
  static const TextStyle subtitle = TextStyle(color: black56, fontSize: 12);
  static const TextStyle subtitle53 = TextStyle(color: black53, fontSize: 12);
  static const TextStyle bodyTextred = TextStyle(color: red, fontSize: 18);
  static const TextStyle bodyText3red =
      TextStyle(color: red, fontSize: 10, fontWeight: FontWeight.bold);
}
