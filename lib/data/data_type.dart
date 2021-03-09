class UnitTest {
  final String name;
  final int maxMarks;
  bool isDone;
  UnitTest({this.name, this.maxMarks});
  void toggleDone() {
    isDone = !isDone;
  }
}

class Assignment {
  final String name;
  final int maxMarks;
  bool isDone;
  Assignment({this.name, this.maxMarks});
  void toggleDone() {
    isDone = !isDone;
  }
}

class Termwork {
  final String name;
  final int maxMarks;
  bool isDone;
  Termwork({this.name, this.maxMarks});
  void toggleDone() {
    isDone = !isDone;
  }
}

class TermWork {
  final String name;
  final int maxMarks;
  bool isDone;
  TermWork({this.name, this.maxMarks});
  void toggleDone() {
    isDone = !isDone;
  }

}

class Student {
  final String name;
  final int rollNumber;
  int marks;
  Student({this.name, this.rollNumber,this.marks});
}