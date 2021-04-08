import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'Buy bread')];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
