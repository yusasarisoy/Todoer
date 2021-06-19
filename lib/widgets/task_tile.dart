import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hello',
        style: TextStyle(
          color: Colors.white,
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(isChecked, (bool? checkboxState) {
        if (checkboxState != null) {
          setState(() {
            isChecked = checkboxState;
          });
        }
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final ValueChanged<bool?> toggleCheckboxState;

  TaskCheckbox(this.checkboxState, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.pinkAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
