import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_1/data/assignment_data.dart';
import 'package:ui_1/data/experiment_data.dart';
import 'package:ui_1/data/termwork_data.dart';

class AddTaskScreen extends StatefulWidget {
  final String title;
  final String taskType;

  AddTaskScreen({this.title, this.taskType});
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  int marks;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Text('Title'),
                    TextField(
                      autofocus: true,
                      textAlign: TextAlign.center,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (newText) {
                        title = newText;
                      },
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Text('Max. Marks'),
                    DropdownButton<int>(
                      hint: Text('Select'),
                      value: marks,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 30,
                      elevation: 16,
                      underline: SizedBox(
                        height: 1.0,
                      ),
                      onChanged: (int newValue) {
                        setState(() {
                          marks = newValue;
                        });
                      },
                      items: <int>[10, 20, 25, 50].map((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    ),
                  ],
                )),
              ],
            ),
            TextButton(
              child: Container(
                color: Colors.lightBlueAccent,
                height: 50.0,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                if (widget.taskType == 'assignment') {
                  Provider.of<AssignmentData>(context, listen: false)
                      .addTask(newTitle: title, maxMarks: marks.toInt());
                  Navigator.pop(context);
                } else if (widget.taskType == 'experiment') {
                  Provider.of<ExperimentData>(context, listen: false)
                      .addTask(newTitle: title, maxMarks: marks.toInt());
                  Navigator.pop(context);
                } else if (widget.taskType == 'termwork') {
                  Provider.of<TermWorkData>(context, listen: false)
                      .addTask(newTitle: title, maxMarks: marks.toInt());
                  Navigator.pop(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
