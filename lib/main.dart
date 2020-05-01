import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:saydo/models/task_data.dart';

void main() => runApp(SayDo());

class SayDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //TOP LEVEL SO THAT THE REST OF THE LEVELS CAN SEE IT
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
