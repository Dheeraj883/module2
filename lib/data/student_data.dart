import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:ui_1/data/data_type.dart';

class StudentData extends ChangeNotifier {
  List<Student> _students = [
    Student(name: 'Dheeraj Kumar',rollNumber: 1,marks: 10),
    Student(name: 'Abhishek Mishra',rollNumber: 2,marks: 11),
    Student(name: 'Sadhana Chaudhary',rollNumber: 3,marks: 10),
    Student(name: 'Prashant Shandilya',rollNumber: 4,marks: 10),
    Student(name: 'Varsha Singh',rollNumber: 5,marks: 10),
    Student(name: 'Abhinav Jha',rollNumber: 6,marks: 10),
  ];

  UnmodifiableListView<Student> get students {
    return UnmodifiableListView(_students);
  }

  int get studentCount {
    return _students.length;
  }


}
