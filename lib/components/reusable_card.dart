import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String subjectName;
  final String className;
  final String division;
  final String timing;
  final Color colour;
  final Function nextScreenCallback;
  ReusableCard({this.colour,this.nextScreenCallback,this.subjectName,this.className,this.division,this.timing});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextScreenCallback,
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: 200.0,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                subjectName,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                className,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                division,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(timing,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
