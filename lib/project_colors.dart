import 'package:flutter/material.dart';

const Color myGreen = Color.fromRGBO(26, 188, 0, 1);
const Color textGrey = Color.fromRGBO(147, 147, 147, 1);
const Color dividerGrey = Color.fromRGBO(151, 151, 151, 1);
const Color searchBackground = Color.fromRGBO(221, 222, 225, 0.4);

class Palette {
  static const MaterialColor greenToDark = MaterialColor(
    0xFF1ABC00, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff17a900), //10%
      100: Color(0xff159600), //20%
      200: Color(0xff128400), //30%
      300: Color(0xff107100), //40%
      400: Color(0xff0d5e00), //50%
      500: Color(0xff0a4b00), //60%
      600: Color(0xff083800), //70%
      700: Color(0xff052600), //80%
      800: Color(0xff031300), //90%
      900: Color(0xff000000), //100%
    },
  );
}
