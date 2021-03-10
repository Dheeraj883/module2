import 'package:flutter/material.dart';
import 'package:ui_1/components/student_list.dart';

class StudentsMarks extends StatelessWidget {
  static const String id = 'students_marks';



  @override
  Widget build(BuildContext context) {
final int maxMarks = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('T.E. Computer'),
        ),
        body: Container(
          child: StudentList(maxMarks: maxMarks),

        )
    );
  }
}


