import 'package:flutter/material.dart';
import 'package:ui_1/components/term_work_list.dart';
import 'package:ui_1/screens/add_task.dart';

class Termworkpage extends StatefulWidget {
  static const String id = 'term_work_page';
  @override
  _TermworkpageState createState() => _TermworkpageState();
}

class _TermworkpageState extends State<Termworkpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Term Works'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => AddTaskScreen(
              title: 'Add Termwork',
              taskType: 'termwork',
            ));
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          child: TermWorkList(),
        )
    );
  }
}


