import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:ui_1/components/reusable_card.dart';
import 'package:ui_1/screens/assignment.dart';
import 'package:ui_1/screens/experiment.dart';
import 'package:ui_1/screens/termwork.dart';
import 'package:ui_1/screens/unit_test.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'All Notes',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.teal[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                            child: Text('Every notes you wrote')),
                      ],
                    ),
                  ),
                ),
              ),
              ButtonsTabBar(
                backgroundColor: Colors.red,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "Unit Test",
                  ),
                  Tab(
                    text: "Assignments",
                  ),
                  Tab(
                    text: "Experiments",
                  ),
                  Tab(
                    text: "Term Work",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                                    child: ReusableCard(
                                      colour: Colors.indigo[700],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, UnitTestPage.id);
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                                    child: ReusableCard(
                                      colour: Colors.indigo[900],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, UnitTestPage.id);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                                    child: ReusableCard(
                                      colour: Colors.blue,
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, UnitTestPage.id);
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                                    child: ReusableCard(
                                      colour: Colors.tealAccent[400],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, UnitTestPage.id);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                                    child: ReusableCard(
                                      colour: Colors.indigo[700],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, AssignmentPage.id);
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                                    child: ReusableCard(
                                      colour: Colors.indigo[900],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, AssignmentPage.id);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                                    child: ReusableCard(
                                      colour: Colors.blue,
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, AssignmentPage.id);
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                                    child: ReusableCard(
                                      colour: Colors.tealAccent[400],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, AssignmentPage.id);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                                    child: ReusableCard(
                                      colour: Colors.indigo[700],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, ExperimentPage.id);
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                                    child: ReusableCard(
                                      colour: Colors.indigo[900],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, ExperimentPage.id);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                                    child: ReusableCard(
                                      colour: Colors.blue,
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, ExperimentPage.id);
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                                    child: ReusableCard(
                                      colour: Colors.tealAccent[400],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, ExperimentPage.id);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                                    child: ReusableCard(
                                      colour: Colors.indigo[700],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, Termworkpage.id);
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                                    child: ReusableCard(
                                      colour: Colors.indigo[900],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, Termworkpage.id);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                                    child: ReusableCard(
                                      colour: Colors.blue,
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, Termworkpage.id);
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                                    child: ReusableCard(
                                      colour: Colors.tealAccent[400],
                                      nextScreenCallback: () {
                                        Navigator.pushNamed(context, Termworkpage.id);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
