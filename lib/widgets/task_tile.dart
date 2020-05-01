import 'dart:developer';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool currentState) {
    setState(() {
      isChecked = currentState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TaskCheckbox(isChecked, checkboxCallback);
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckbox;
  //Constructor for this stateless widget needs to have a state passed
  TaskCheckbox(this.checkboxState, this.toggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
          decoration: checkboxState ? TextDecoration.lineThrough : null,
        ),
      ),
      value: checkboxState,
      onChanged: (newValue) {
        toggleCheckbox(newValue);
      },
    );
  }
}
