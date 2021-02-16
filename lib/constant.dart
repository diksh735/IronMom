import 'package:flutter/material.dart';

const MaterialColor kPrimaryRed = const MaterialColor(
  0xff9C3637,
  const <int, Color>{
    50: const Color(0xff9C3637),
    100: const Color(0xff9C3637),
    200: const Color(0xff9C3637),
    300: const Color(0xff9C3637),
    400: const Color(0xff9C3637),
    500: const Color(0xff9C3637),
    600: const Color(0xff9C3637),
    700: const Color(0xff9C3637),
    800: const Color(0xff9C3637),
    900: const Color(0xff9C3637),
  },
);

const MaterialColor kPrimaryWhite = const MaterialColor(
  0xffFFFFFF,
  const <int, Color>{
    50: const Color(0xffFFFFFF),
    100: const Color(0xffFFFFFF),
    200: const Color(0xffFFFFFF),
    300: const Color(0xffFFFFFF),
    400: const Color(0xffFFFFFF),
    500: const Color(0xffFFFFFF),
    600: const Color(0xffFFFFFF),
    700: const Color(0xffFFFFFF),
    800: const Color(0xffFFFFFF),
    900: const Color(0xffFFFFFF),
  },
);

const kPrimaryDark = Color(0xffC4B6B8);
const kBlack = Color(0xff2C292D);
const kDarkRed = Color(0xff63080B);
const kGrayDark = Color(0xff7A8596);
const kGray = Color(0xffB5B5B5);

class DeviceSize {
  double height;
  double width;
  BuildContext context;

  DeviceSize({this.context}) {
    final size = MediaQuery.of(context).size;
    height = size.height - kBottomNavigationBarHeight;
    width = size.width;
  }
}
