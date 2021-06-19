import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
