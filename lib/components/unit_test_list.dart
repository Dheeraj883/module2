import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_1/components/newTaskTile.dart';
import 'package:ui_1/data/unittest_data.dart';
import 'package:ui_1/screens/students_marks.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';


class UnitTestList extends StatefulWidget {
  @override
  _UnitTestListState createState() => _UnitTestListState();
}

class _UnitTestListState extends State<UnitTestList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UnitTestData>(
      builder: (context, unitTestData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final unitTest = unitTestData.unitTests[index];
            return NewTaskTile(
              title: unitTest.name,
              maxMarks: unitTest.maxMarks,
              addMarksCallback: () {
                Navigator.pushNamed(context, StudentsMarks.id, arguments: unitTest.maxMarks.toInt());
              },
              submitCallback: () {
                showOkCancelAlertDialog(
                  context: context,
                  title: 'Warning',
                  message: 'Are you Sure you want to submit',
                );
              },
            );
          },
          itemCount: unitTestData.unitTestCount,
        );
      },
    );
  }
}
