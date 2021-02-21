import 'package:flutter/material.dart';
import 'package:iron_mom/screens/program.dart';
import 'package:iron_mom/screens/progress.dart';

import '../constant.dart';
import 'faq.dart';

class IronTracker extends StatelessWidget {
  static const routeName = '/ironTracker';
  @override
  Widget build(BuildContext context) {
    final size = DeviceSize(context: context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text('Iron Tracker'),
        centerTitle: true,
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
      body: DefaultTabController(
        length: 2,
        child: TabBar(
          tabs: [
            Tab(
              text: 'Iron Levels',
            ),
            Tab(
              text: 'Supplements',
            ),
          ],
        ),
      ),
    );
  }
}
