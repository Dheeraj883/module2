import 'package:flutter/material.dart';
import 'package:ui_1/data/assignment_data.dart';
import 'package:ui_1/data/unittest_data.dart';
import 'package:ui_1/data/experiment_data.dart';
import 'package:ui_1/data/termwork_data.dart';
import 'package:ui_1/screens/termwork.dart';
import 'package:ui_1/screens/unit_test.dart';
import 'screens/experiment.dart';
import 'screens/home_page.dart';
import 'screens/assignment.dart';
import 'screens/students_marks.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<AssignmentData>(
            create : (context) => AssignmentData(),
          ),
          ChangeNotifierProvider<UnitTestData>(
            create: (context) => UnitTestData(),
          ),
          ChangeNotifierProvider<ExperimentData>(
            create : (context) => ExperimentData(),
          ),
          ChangeNotifierProvider<TermWorkData>(
            create : (context) => TermWorkData(),
          ),
        ],

      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        StudentsMarks.id: (context) => StudentsMarks(),
        AssignmentPage.id: (context) => AssignmentPage(),
        UnitTestPage.id: (context) => UnitTestPage(),
        ExperimentPage.id: (context) => ExperimentPage(),
        Termworkpage.id: (context) => Termworkpage(),
      },
      ),
    );
  }
}
