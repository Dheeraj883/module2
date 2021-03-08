import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_1/components/newTaskTile.dart';
import 'package:ui_1/data/termwork_data.dart';
import 'package:ui_1/screens/students_marks.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';


class TermWorkList extends StatefulWidget {
  @override
  _TermWorkListState createState() => _TermWorkListState();
}

class _TermWorkListState extends State<TermWorkList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TermWorkData>(
      builder: (context, termworkData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final termwork = termworkData.termworks[index];
            return NewTaskTile(
              title: termwork.name,
              maxMarks: termwork.maxMarks,
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
          itemCount: termworkData.termWorkCount,
        );
      },
    );
  }
}
