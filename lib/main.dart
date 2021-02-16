import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:iron_mom/screens/dashboard.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(kPrimaryWhite);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iron Mom',
      theme: ThemeData(
        primarySwatch: kPrimaryWhite,
      ),
      home: Dashboard(),
      routes: {
        Dashboard.routeName: (context) => Dashboard(),
      },
    );
  }
}
