import 'package:flutter/material.dart';

const MaterialColor kPrimaryRed = const MaterialColor(
  0xffB52238,
  const <int, Color>{
    50: const Color(0xffB52238),
    100: const Color(0xffB52238),
    200: const Color(0xffB52238),
    300: const Color(0xffB52238),
    400: const Color(0xffB52238),
    500: const Color(0xffB52238),
    600: const Color(0xffB52238),
    700: const Color(0xffB52238),
    800: const Color(0xffB52238),
    900: const Color(0xffB52238),
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
