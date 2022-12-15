import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenW;
  static double? screenH;
  static double? blockH;
  static double? blockV;

  static const double s5 = 5;
  static const double s10 = 10.0;
  static const double s13 = 13;
  static const double s15 = 15;
  static const double s17 = 17;
  static const double s20 = 20.0;
  static const double s25 = 25.0;
  static const double s30 = 30;
  static const double s35 = 35;
  static const double s50 = 50;
  static const double s60 = 60.0;
  static const double s120 = 120;
  static const double s150 = 150.0;
  static const double s200 = 200.0;
  static const double s400 = 400.0;
  static const double s550 = 550.0;
  static const double s840 = 840.0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenW = _mediaQueryData!.size.width;
    screenH = _mediaQueryData!.size.height;
    blockH = screenW! / 100;
    blockV = screenH! / 100;
  }
}

class AppPadding {
  static const double p5 = 5.0;
  static const double p8 = 8.0;
  static const double p10 = 10.0;
  static const double p15 = 15.0;
  static const double p20 = 20.0;
  static const double p30 = 30.0;
  static const double p40 = 40.0;
  static const double p100 = 100.0;
}