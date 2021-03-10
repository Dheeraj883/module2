import 'package:flutter/material.dart';
import 'package:ui_1/data/data_type.dart';
import 'package:ui_1/data/student_data.dart';
import 'package:provider/provider.dart';

class StudentMarksCard extends StatefulWidget {
  final String name;
  final int rollNo;
  final int maxMarks;
  final int currentMarks;


  StudentMarksCard({this.name, this.rollNo, this.maxMarks,this.currentMarks});

  @override
  _StudentMarksCardState createState() => _StudentMarksCardState();
}

class _StudentMarksCardState extends State<StudentMarksCard> {
  List items=[];
  DropdownButton<int> androidDropdown(int marks) {
    List<DropdownMenuItem<int>> dropdownItems = [];
    for (int i=0; i <= widget.maxMarks; i++) {
      var newItem = DropdownMenuItem(
        child: Text(i.toString(),
        style: TextStyle(fontSize: 25.0),
        ),
        value: i,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<int>(
      value: marks,
      underline: SizedBox(
        height: 1.0,
      ),
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          marks = value;
          Provider.of<StudentData>(context).updateMarks(Student(name: widget.name, rollNumber: widget.rollNo,marks: value));
        });
      },
    );
  }


  @override
  Widget build(BuildContext context) {
      return Card(

        child: ListTile(
          leading: CircleAvatar(
            child: Text('${widget.rollNo.toString()}'),
          ),
          title: Text(
            widget.name
          ),
          subtitle: Text('T.E. B1 Batch'),
          trailing: androidDropdown(widget.currentMarks),
        ),
      );

  }
}
