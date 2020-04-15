import 'package:flutter/material.dart';

Color background = Color(0xffcbe4f3);
Color darkShadow = Color(0xffadc2cf);
Color lightShadow = Color(0xffe9ffff);

Color textColor = Color(0xff001f3f);

Color onlineIndicator = Color(0xff0ee50a);

var softShadows = [
  BoxShadow(
      color: darkShadow,
      offset: Offset(2.0, 2.0),
      blurRadius: 2.0,
      spreadRadius: 1.0),
  BoxShadow(
      color: lightShadow,
      offset: Offset(-2.0, -2.0),
      blurRadius: 2.0,
      spreadRadius: 1.0),
];

var softShadowsInvert = [
  BoxShadow(
      color: lightShadow,
      offset: Offset(2.0, 2.0),
      blurRadius: 2.0,
      spreadRadius: 2.0),
  BoxShadow(
      color: darkShadow,
      offset: Offset(-2.0, -2.0),
      blurRadius: 2.0,
      spreadRadius: 2.0),
];
