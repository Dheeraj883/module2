import 'package:flutter/material.dart';
import 'package:ui_1/screens/add_task.dart';
import 'package:ui_1/components/assignment_list.dart';

class AssignmentPage extends StatefulWidget {
  static const String id = 'assignment_page';
  @override
  _AssignmentPageState createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen(
            title: 'Add Assignment',
            taskType: 'assignment',
          ),);
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: AssignmentList(),
      )
    );
  }
}


