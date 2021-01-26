import 'package:flutter/material.dart';
import 'package:todo_app/models/tasks.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Tasks> tasks = [
    Tasks(name: 'Buy bread'),
    Tasks(name: 'Buy milk'),
    Tasks(name: 'Buy butter')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          title: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          title: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          title: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}
