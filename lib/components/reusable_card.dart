import 'package:flutter/material.dart';
import 'package:ui_1/screens/assignment.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Function nextScreenCallback;
  ReusableCard({this.colour,this.nextScreenCallback});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Apple !work',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '08',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '10-27-2019',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundImage: AssetImage('images/icon1.jpg'),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.red,
                        width: 4.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.green[900],
                      radius: 15.0,
                      backgroundImage: AssetImage('images/icon2.png'),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 4.0,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
