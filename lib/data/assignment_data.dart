import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:ui_1/data/data_type.dart';

class AssignmentData extends ChangeNotifier {
  List<Assignment> _assignments = [
    Assignment(name: 'Assignment 1', maxMarks: 10),
  ];

  UnmodifiableListView<Assignment> get assignments {
    return UnmodifiableListView(_assignments);
  }

  int get assignmentCount {
    return _assignments.length;
  }

  void addTask({String newTitle, int maxMarks}) {
    final assignment = Assignment(name: newTitle, maxMarks: maxMarks);
    _assignments.add(assignment);
    notifyListeners();
  }

  void updateTask(Assignment assignment) {
    assignment.toggleDone();
    notifyListeners();
  }

  void deleteTask(Assignment assignment) {
    _assignments.remove(assignment);
    notifyListeners();
  }
}
