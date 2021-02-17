import 'package:flutter/material.dart';
import 'package:iron_mom/constant.dart';

class ReminderCard extends StatelessWidget {
  final date, message, month;
  ReminderCard({this.date, this.message, this.month});

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 6, 9, 6),
                decoration: BoxDecoration(
                  color: Color(0xffB52238),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                          color: kPrimaryWhite, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      month,
                      style: TextStyle(color: kPrimaryWhite, fontSize: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Flexible(child: Text(message)),
              ),
            ],
          ),
          Divider(
            thickness: 0.12,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
