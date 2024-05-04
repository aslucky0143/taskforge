import 'package:flutter/material.dart';

class Responsive {
  static width(double p, BuildContext context) {
    return MediaQuery.of(context).size.width * (p / 100);
  }

  static height(double p, BuildContext context) {
    return MediaQuery.of(context).size.height * (p / 100);
  }
}

//color pallete 1
Color c1 = Color(0xff004a27);
Color c2 = Color(0xffec6b5d);
Color white = Colors.white;
Color black = Colors.black;
