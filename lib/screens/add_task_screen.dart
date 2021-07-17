import 'package:flutter/material.dart';
import 'package:todoer/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskTitle = "";

    return Container(
      padding: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            autofocus: true,
            cursorColor: Colors.black87,
            textAlign: TextAlign.center,
            onChanged: (value) => {taskTitle = value},
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            child: Text('ADD'),
            style: TextButton.styleFrom(
              primary: Colors.pinkAccent,
              backgroundColor: Colors.black87,
            ),
            onPressed: () => {
              Provider.of<TaskData>(context, listen: false).addTask(taskTitle),
              Navigator.pop(context),
            },
          ),
        ],
      ),
    );
  }
}
