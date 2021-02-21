import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iron_mom/constant.dart';
import 'package:iron_mom/helper/iron_deficinecy.dart';
import 'package:iron_mom/helper/learning_iron.dart';
import 'package:iron_mom/helper/weeklyTips.dart';
import 'package:iron_mom/model/learn_iron.dart';
import 'package:iron_mom/screens/progress.dart';
import 'faq.dart';
import 'iron_tracker.dart';

class Program extends StatefulWidget {
  static const routeName = '/program';

  @override
  _ProgramState createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  List<LearningIronModel> learnings = new List<LearningIronModel>();
  List<LearningIronModel> defics = new List<LearningIronModel>();
  List<String> weeklyTips = new List<String>();
  @override
  void initState() {
    super.initState();
    learnings = getlearning();
    defics = getIronDeficiency();
    weeklyTips = getWeeklyTips();
  }

  @override
  Widget build(BuildContext context) {
    final size = DeviceSize(context: context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text('Program'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
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
          margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Learning about Iron',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'VIEW ALL',
                      style: TextStyle(
                        color: kPrimaryRed,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                height: size.height / 3.8,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: learnings.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProgramCard(
                        imageUrl: learnings[index].imgUrl,
                        heading: learnings[index].heading,
                      );
                    }),
              ),
              Divider(
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'About Iron Deficiency and Pregnancy',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    child: Text(
                      'VIEW ALL',
                      style: TextStyle(
                        color: kPrimaryRed,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                height: size.height / 4.4,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: defics.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProgramCard(
                        imageUrl: defics[index].imgUrl,
                        heading: defics[index].heading,
                      );
                    }),
              ),
              Divider(
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Weekly Tips',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'VIEW ALL',
                      style: TextStyle(
                        color: kPrimaryRed,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                height: size.height / 5.9,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: learnings.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: size.width / 3,
                      margin: EdgeInsets.only(right: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: CachedNetworkImage(
                          imageUrl: weeklyTips[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final imageUrl, heading;
  ProgramCard({this.imageUrl, this.heading});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: size.width / 3,
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                height: size.height / 5.9,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Flexible(
                child: Text(
              heading,
              maxLines: 3,
              softWrap: true,
            )),
          ],
        ),
      ),
    );
  }
}
