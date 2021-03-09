import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_1/components/student_marks_card.dart';
import 'package:ui_1/data/student_data.dart';


class StudentList extends StatefulWidget {
  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<StudentData>(
      builder: (context, studentData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final student = studentData.students[index];
            return StudentMarksCard(
              name: student.name,
              rollNo: student.rollNumber,
              maxMarks: 20,
              currentMarks: student.marks,
            );
          },
          itemCount: studentData.studentCount,
        );
      },
    );
  }
}
