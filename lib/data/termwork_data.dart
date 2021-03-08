import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:ui_1/data/data_type.dart';

class TermWorkData extends ChangeNotifier {
  List<TermWork> _termworks = [
    TermWork(name: 'Mini Project', maxMarks: 25)
  ];

  UnmodifiableListView<TermWork> get termworks {
    return UnmodifiableListView(_termworks);
  }

  int get termWorkCount {
    return _termworks.length;
  }

  void addTask({String newTitle, int maxMarks}) {
    final termwork = TermWork(name: newTitle, maxMarks: maxMarks);
    _termworks.add(termwork);
    notifyListeners();
  }

  void updateTask(TermWork termwork) {
    termwork.toggleDone();
    notifyListeners();
  }

  void deleteTask(TermWork termwork) {
    _termworks.remove(termwork);
    notifyListeners();
  }
}
