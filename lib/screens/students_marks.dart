import 'package:flutter/material.dart';
import 'package:ui_1/components/student_list.dart';

class StudentsMarks extends StatefulWidget {
  static const String id = 'students_marks';
  @override
  _StudentsMarksState createState() => _StudentsMarksState();
}

class _StudentsMarksState extends State<StudentsMarks> {
  String textfieldValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('T.E. Computer'),
        ),
        body: Container(
          child: StudentList(),
        )
    );
  }
}


