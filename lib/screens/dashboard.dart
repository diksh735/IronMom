import 'package:flutter/material.dart';
import 'package:iron_mom/constant.dart';
import 'package:iron_mom/screens/progress.dart';
import 'faq.dart';
import 'iron_tracker.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
      body: Container(
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
              height: 10,
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                width: size.width / 0.5,
                height: size.height / 6,
                decoration: BoxDecoration(
                  color: kPrimaryWhite,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [],
                ))
          ],
        ),
      ),
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
                Navigator.pushNamed(context, Dashboard.routeName);
              },
            ),
            title: FittedBox(
              child: Text('Dashboard'),
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
    );
  }
}
