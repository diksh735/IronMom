import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iron_mom/screens/program.dart';

import '../constant.dart';
import 'faq.dart';
import 'iron_tracker.dart';

class Progress extends StatelessWidget {
  static const routeName = '/progress';
  @override
  Widget build(BuildContext context) {
    final size = DeviceSize(context: context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background2.png'),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: size.height / 5.4,
              ),
              Center(
                child: Text(
                  'PHENOMENAL MOM !',
                  style: TextStyle(
                      color: kPrimaryRed,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: kPrimaryRed,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
// Where the linear gradient begins and ends
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
// Add one stop for each color. Stops should increase from 0 to 1
                          stops: [0.2, 0.8],
                          colors: [
// Colors are easy thanks to Flutter's Colors class.
                            Color(0xff851424),
                            Color(0xffD8485C),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(60, 20, 30, 15),
                      child: Column(
                        children: [
                          Text(
                            '7',
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'DAYS',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Streak',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: Text(
                  'You have achieved a streak to take your iron supplements 7 days in a row',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
