import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(dynamic checkboxState) checkboxCallback;
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: const Color.fromARGB(255, 236, 26, 57),
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
      ),
    );
  }
}
