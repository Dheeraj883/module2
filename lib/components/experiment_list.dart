import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_1/components/newTaskTile.dart';
import 'package:ui_1/data/experiment_data.dart';
import 'package:ui_1/screens/students_marks.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';


class ExperimentList extends StatefulWidget {
  @override
  _ExperimentListState createState() => _ExperimentListState();
}

class _ExperimentListState extends State<ExperimentList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExperimentData>(
      builder: (context, experimentData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final experiment = experimentData.experiments[index];
            return NewTaskTile(
              title: experiment.name,
              maxMarks: experiment.maxMarks,
              addMarksCallback: () {
                Navigator.pushNamed(context, StudentsMarks.id,arguments: experiment.maxMarks.toInt());
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
          itemCount: experimentData.experimentCount,
        );
      },
    );
  }
}
