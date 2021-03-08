import 'package:flutter/material.dart';
import 'package:ui_1/screens/add_task.dart';
import 'package:ui_1/components/unit_test_list.dart';

class UnitTestPage extends StatefulWidget {
  static const String id = 'unit_test_page';
  @override
  _UnitTestPageState createState() => _UnitTestPageState();
}

class _UnitTestPageState extends State<UnitTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Unit Test'),
        ),

        body: Container(
          child: UnitTestList(),
        )
    );
  }
}


