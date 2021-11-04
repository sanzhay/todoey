import 'package:flutter/material.dart';

class TaskLile extends StatefulWidget {
  @override
  State<TaskLile> createState() => _TaskLileState();
}

class _TaskLileState extends State<TaskLile> {
  bool isChecked = false;

  void chechboxCallBack(bool newValue) {
    setState(() {
      isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ListTile(
      title: Text(
        'This is new task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      // ignore: prefer_const_constructors
      trailing: TaskCheckBox(
          checkboxState: isChecked, toggleChaeckboxState: chechboxCallBack),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  late final Function toggleChaeckboxState;

  TaskCheckBox({this.checkboxState, this.toggleChaeckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blueAccent,
      value: checkboxState,
      onChanged: toggleChaeckboxState,
    );
  }
}
