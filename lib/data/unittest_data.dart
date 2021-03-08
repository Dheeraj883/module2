import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:ui_1/data/data_type.dart';

class UnitTestData extends ChangeNotifier {
  List<UnitTest> _unitTests = [
    UnitTest(name: 'Unit Test 1', maxMarks: 20),
    UnitTest(name: 'Unit Test 2', maxMarks: 20)
  ];

  UnmodifiableListView<UnitTest> get unitTests {
    return UnmodifiableListView(_unitTests);
  }

  int get unitTestCount {
    return _unitTests.length;
  }

  void addTask(String newTitle, int marks) {
    final unitTest = UnitTest(name: newTitle, maxMarks: marks);
    _unitTests.add(unitTest);
    notifyListeners();
  }

  void updateTask(UnitTest unitTest) {
    unitTest.toggleDone();
    notifyListeners();
  }

  void deleteTask(UnitTest unitTest) {
    _unitTests.remove(unitTest);
    notifyListeners();
  }
}
