import 'package:flutter/material.dart';
import 'package:saydo/constants.dart';
import 'package:saydo/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:saydo/models/task.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];
  Widget buildBottomSheet(BuildContext context) {
    return AddTaskScreen((newTaskTitle) {
      setState(() {
        tasks.add(Task(name: newTaskTitle));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          //On press
          showModalBottomSheet(
            context: context,
            builder: buildBottomSheet,
            //isScrollControlled: true,
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, right: 30.0, left: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'SayDo',
                  style: kHeaderTextStyle,
                ),
                Text(
                  '${tasks.length} Tasks ',
                  style: KSubHeaderTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: kTasksScreenBox,
              child: TasksList(tasks: tasks),
            ),
          )
        ],
      ),
    );
  }
}
