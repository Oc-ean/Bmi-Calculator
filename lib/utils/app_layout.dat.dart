import 'package:flutter/material.dart';

class AppLayOut {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getHeight(double pixels, BuildContext context) {
    double x = MediaQuery.of(context).size.height / pixels;
    return MediaQuery.of(context).size.height / x;
  }

  static getWidth(double pixels, BuildContext context) {
    double x = MediaQuery.of(context).size.width / pixels;
    return MediaQuery.of(context).size.width / x;
  }
}
