import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];
  int get taskLength {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  } //MAKING SURE VALUE IS ONLY AVAILABLE TO GET

  void addTasks(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}
