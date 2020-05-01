import 'package:flutter/material.dart';
import 'package:saydo/models/task_data.dart';
import 'task_tile.dart';
import 'package:saydo/models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      //CONSUMER IS THE SAME OF PROVIDER OF... THAT WILL CONSUME THE STATE
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index]
                    .name, //Widget refers to the stateful widget which gets the property form up stream
                isChecked: taskData.tasks[index].isComplete,
                checkboxCallback: (bool checkboxState) {
//              setState(() {
//                Provider.of<TaskData>(context).tasks[index].toggleComplete();
//              });
                });
          },
          itemCount:
              taskData.tasks.length, //SETS THE UPPER BOUND FOR THE LIST VIEW
        );
      },
    );
  }
}
