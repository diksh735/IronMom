import 'package:flutter/material.dart';

import '../constant.dart';

class ReminderPage extends StatelessWidget {
  String msg;
  ReminderPage({@required this.msg});

  static const routeName = 'reminder';
  @override
  Widget build(BuildContext context) {
    final size = DeviceSize(context: context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 2.5,
              ),
              Text(
                'REMINDER',
                style: TextStyle(
                  fontSize: 18,
                  color: kPrimaryRed,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.fromLTRB(50, 30, 50, 50),
                  child: Text(
                    msg,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
                    child: Text(
                      'DISMISS',
                      style: TextStyle(fontSize: 18),
                    ),
                    elevation: 5,
                    color: kPrimaryRed,
                    textColor: kPrimaryWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
