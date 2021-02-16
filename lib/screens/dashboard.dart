import 'package:flutter/material.dart';
import 'package:iron_mom/constant.dart';

class Dashboard extends StatelessWidget {
  static const routeName = '/dashboard';
  @override
  Widget build(BuildContext context) {
    final size = DeviceSize(context: context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryWhite,
        elevation: 1,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'IRON MOM',
              style: TextStyle(fontSize: 13, color: kPrimaryRed),
            ),
            Text(
              'Iron Deficiency Management App',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.person_rounded,
                size: 30,
              ),
              onPressed: null),
        ],
      ),
      backgroundColor: Color(0xffF4F4F4),
      body: Container(),
    );
  }
}
