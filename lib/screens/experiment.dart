import 'package:flutter/material.dart';
import 'package:ui_1/components/experiment_list.dart';
import 'package:ui_1/screens/add_task.dart';
import 'package:ui_1/components/experiment_list.dart';

class ExperimentPage extends StatefulWidget {
  static const String id = 'experiment_page';
  @override
  _ExperimentPageState createState() => _ExperimentPageState();
}

class _ExperimentPageState extends State<ExperimentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Experiments'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => AddTaskScreen(
              title: 'Add Experiment',
              taskType: 'experiment',
            ));
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          child: ExperimentList(),
        )
    );
  }
}


