import 'package:flutter/material.dart';
import 'package:saydo/constants.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25.0),
        decoration: kTasksScreenBox,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: kHeader2TextStyle,
            ),
            SizedBox(height: 20.0),
            TextField(
              enabled: true,
              autofocus: true,
              decoration: InputDecoration(helperText: 'Create a new task'),
            ),
            SizedBox(height: 20.0),
            FlatButton(
                onPressed: () {},
                child: Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent)
          ],
        ),
      ),
    );
  }
}
