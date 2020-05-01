import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];
  int get taskLength {
    return tasks.length;
  }

  void addTasks(newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}
