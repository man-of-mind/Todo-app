import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/screens/taskScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
//      builder: (context) => TaskData(),
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
