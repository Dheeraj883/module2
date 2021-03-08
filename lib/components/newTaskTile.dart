import 'package:flutter/material.dart';

class NewTaskTile extends StatelessWidget {
  final String title;
  final int maxMarks;
  final Function addMarksCallback;
  final Function submitCallback;
  NewTaskTile({this.title,this.maxMarks, this.addMarksCallback,this.submitCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
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
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('${maxMarks.toString()} Marks '),
                ],
              )

            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: addMarksCallback,
                child: Icon(
                  Icons.add_circle_sharp,
                  color: Colors.blue,
                  size: 40.0,
                ),
              ),
              Text('Add Marks'),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: submitCallback,
                child: Icon(
                  Icons.send,
                  color: Colors.green,
                  size: 40.0,
                ),
              ),
              Text('Submit'),
            ],
          ),
        ],
      ),
    );
  }
}