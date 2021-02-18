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
  TextEditingController _controller;
  int hemo = 93;
  int ferri = 39;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = DeviceSize(context: context);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(40, 10, 40, 50),
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
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: kGray),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Date',
                        border: InputBorder.none,
                      ),
                      controller: _controller,
                    ),
                    width: size.width / 2,
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2019, 1),
                          lastDate: DateTime(2021, 12),
                          builder: (BuildContext context, Widget picker) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                colorScheme: ColorScheme.light(
                                  secondary: kPrimaryRed,
                                  secondaryVariant: kPrimaryRed,
                                  primary: kPrimaryRed,
                                  onPrimary: kPrimaryWhite,
                                  surface: kPrimaryRed,
                                  onSurface: Colors.black,
                                ),
                                dialogBackgroundColor: kPrimaryWhite,
                              ),
                              child: picker,
                            );
                          }).then((selectedDate) {
                        if (selectedDate != null) {
                          String s = selectedDate.toString();
                          var date = DateTime.parse(s);
                          var formattedDate =
                              "${date.day}/${date.month}/${date.year}";
                          _controller.text = formattedDate;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
                  child: Text(
                    'SUBMIT',
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
    );
  }
}
