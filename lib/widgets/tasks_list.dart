import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:saydo/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index]
                .name, //Widget refers to the stateful widget which gets the property form up stream
            isChecked: widget.tasks[index].isComplete,
            checkboxCallback: (bool checkboxState) {
              setState(() {
                widget.tasks[index].toggleComplete();
              });
            });
      },
      itemCount: widget.tasks.length, //SETS THE UPPER BOUND FOR THE LIST VIEW
    );
  }
}
