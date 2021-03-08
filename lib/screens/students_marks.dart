import 'package:flutter/material.dart';

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
          title: Text('Class Name'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                StudentMarksCard(
                  name: 'Dheeraj Kumar',
                  rollNo: 1,
                ),
                StudentMarksCard(
                  name: 'Abhishek Mishra',
                  rollNo: 2,
                ),
                StudentMarksCard(
                  name: 'Sadhana Chaudhary',
                  rollNo: 3,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.green,
              ),
              child: FlatButton(
                child: Text('SAVE'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ));
  }
}

class StudentMarksCard extends StatelessWidget {
  final String name;
  final int rollNo;
  StudentMarksCard({this.name, this.rollNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 1.0),
      padding: EdgeInsets.all(10.0),
      height: 80.0,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$rollNo. $name',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 60.0,
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                // textfieldValue = value;
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
