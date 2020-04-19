import 'package:flutter/material.dart';
import 'colors-common.dart';

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
