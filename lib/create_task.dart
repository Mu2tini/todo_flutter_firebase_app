import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateTaskState();
  }

}

class _CreateTaskState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Task'),),
      body: Center(child: Text('Task Form'),),
    );
  }

}