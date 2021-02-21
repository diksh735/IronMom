import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iron_mom/Widgets/modal_bottom_sheet.dart';
import 'package:iron_mom/constant.dart';
import 'package:iron_mom/helper/reminders.dart';
import 'package:iron_mom/model/reminder_model.dart';
import 'package:iron_mom/screens/program.dart';
import 'package:iron_mom/screens/progress.dart';
import 'faq.dart';
import 'iron_tracker.dart';
import 'package:iron_mom/Widgets/reminder_card.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<ReminderModel> reminders = new List<ReminderModel>();

  @override
  void initState() {
    super.initState();
    reminders = getReminders();
  }

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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: kPrimaryRed,
        fixedColor: kPrimaryRed,
        currentIndex: 0,
        onTap: (currentIndex) {},
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.dashboard),
              onTap: () {
                Navigator.pushNamed(context, Program.routeName);
              },
            ),
            title: FittedBox(
              child: Text('Program'),
            ),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.track_changes),
              onTap: () {
                Navigator.pushNamed(context, IronTracker.routeName);
              },
            ),
            title: FittedBox(
              child: Text('Iron Tracker'),
            ),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.grade),
              onTap: () {
                Navigator.pushNamed(context, Progress.routeName);
              },
            ),
            title: FittedBox(
              child: Text('Progress'),
            ),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.question_answer),
              onTap: () {
                Navigator.pushNamed(context, FAQ.routeName);
              },
            ),
            title: FittedBox(
              child: Text('FAQ'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                width: size.width / 0.5,
                height: size.height / 7,
                decoration: BoxDecoration(
                  color: kPrimaryWhite,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/mom.png',
                      height: 70,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Iron deficiency anemia occurs when'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('iron in the body is so low that it can\'t'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('make enough ed Blood Cells'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                width: size.width / 0.5,
                height: size.height / 6,
                decoration: BoxDecoration(
                  color: kPrimaryWhite,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Text(
                      'Take Your Iron Pill Daily',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 20,
                            ),
                            onPressed: null),
                        Image.asset(
                          'images/pill.png',
                          height: size.height / 11,
                          width: size.width / 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Iron Pill',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Take 1 with juice'),
                          ],
                        ),
                        Text('08:30 AM'),
                        IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            ),
                            onPressed: null),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                padding: EdgeInsets.fromLTRB(30, 20, 30, 15),
                width: size.width / 0.5,
                height: size.height / 7,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Color(0xff9A1B2D),
                      Color(0xffB52238),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter your',
                          style: TextStyle(
                              color: kPrimaryWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Text(
                          'Hemoglobin & Ferritin',
                          style: TextStyle(
                              color: kPrimaryWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Text(
                          'lab results',
                          style: TextStyle(
                              color: kPrimaryWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ],
                    ),
                    ClipOval(
                      child: Material(
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: kPrimaryRed,
                            size: 30,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              builder: (context) => BSheet(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                width: size.width / 0.5,
                decoration: BoxDecoration(
                  color: kPrimaryWhite,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Reminder',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: reminders.length,
                        itemBuilder: (context, index) {
                          return ReminderCard(
                            date: reminders[index].date,
                            month: reminders[index].month.toUpperCase(),
                            message: reminders[index].message,
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
