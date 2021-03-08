import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:ui_1/data/data_type.dart';

class ExperimentData extends ChangeNotifier {
  List<Termwork> _experiments = [
    Termwork(name: 'Experiment 1', maxMarks: 10),
    Termwork(name: 'Experiment 2', maxMarks: 10)
  ];

  UnmodifiableListView<Termwork> get experiments {
    return UnmodifiableListView(_experiments);
  }

  int get experimentCount {
    return _experiments.length;
  }

  void addTask({String newTitle, int maxMarks}) {
    final experiment = Termwork(name: newTitle, maxMarks: maxMarks);
    _experiments.add(experiment);
    notifyListeners();
  }

  void updateTask(Termwork experiment) {
    experiment.toggleDone();
    notifyListeners();
  }

  void deleteTask(Termwork experiment) {
    _experiments.remove(experiment);
    notifyListeners();
  }
}
