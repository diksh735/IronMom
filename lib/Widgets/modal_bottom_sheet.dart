import 'package:flutter/material.dart';
import 'package:iron_mom/constant.dart';

class BSheet extends StatefulWidget {
  const BSheet({
    Key key,
  }) : super(key: key);

  @override
  _BSheetState createState() => _BSheetState();
}

class _BSheetState extends State<BSheet> {
  int hemo = 93;
  int ferri = 39;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: IconButton(
              iconSize: 30,
              icon: Icon(Icons.cancel),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Text(
            'Add Lab',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'Results',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Hemoglobin Level',
                style: TextStyle(color: kGrayDark),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                hemo.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(trackHeight: 2),
            child: Slider(
              activeColor: kPrimaryRed,
              inactiveColor: kGray,
              value: hemo.toDouble(),
              min: 0.0,
              max: 200.0,
              onChanged: (double newValue) {
                setState(() {
                  hemo = newValue.round();
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Ferritin Level',
                style: TextStyle(color: kGrayDark),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                ferri.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(trackHeight: 2),
            child: Slider(
              activeColor: kPrimaryRed,
              inactiveColor: kGray,
              value: ferri.toDouble(),
              min: 0.0,
              max: 150.0,
              onChanged: (double newValue) {
                setState(() {
                  ferri = newValue.round();
                });
              },
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Center(
            child: TextFormField(),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
              child: Text('SUBMIT'),
              elevation: 5,
              color: kPrimaryRed,
              textColor: kPrimaryWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
