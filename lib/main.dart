import 'package:flutter/material.dart';
import 'package:todo/create_task.dart';
import 'package:todo/models/task.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/service_locator.dart';

void main() {
  setUpServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Todo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Task> myList;

  void _goToCreateNewTask() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CreateTask()));
  }

  @override
  void initState() {
    myList = List<Task>.generate(
        10, (i) => new Task(task: "Task $i", isDone: false));

    super.initState();
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      title: Text(document['task']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('tasks').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Text('Loading...');
          }

          return ListView.builder(
              itemExtent: 80.0,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                return _buildListItem(context, snapshot.data.documents[index]);
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToCreateNewTask,
        tooltip: 'New Task Button',
        child: Icon(Icons.add),
      ),
    );
  }
}
