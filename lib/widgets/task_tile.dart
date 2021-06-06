import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hello',
        style: TextStyle(color: Colors.white),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) => {},
      ),
    );
  }
}
