import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_1/components/newTaskTile.dart';
import 'package:ui_1/data/assignment_data.dart';
import 'package:ui_1/screens/students_marks.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';


class AssignmentList extends StatefulWidget {
  @override
  _AssignmentListState createState() => _AssignmentListState();
}

class _AssignmentListState extends State<AssignmentList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AssignmentData>(
      builder: (context, assignmentData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final assignment = assignmentData.assignments[index];
            return NewTaskTile(
              title: assignment.name,
              maxMarks: assignment.maxMarks,
              addMarksCallback: () {
                Navigator.pushNamed(context, StudentsMarks.id);
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
          itemCount: assignmentData.assignmentCount,
        );
      },
    );
  }
}
