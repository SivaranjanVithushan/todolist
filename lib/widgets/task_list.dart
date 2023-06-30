import 'package:flutter/material.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/widgets/task_tile.dart';
import 'package:provider/provider.dart ';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: TaskData.tasks[index].name,
              isChecked: TaskData.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                TaskData.updateTask(TaskData.tasks[index]);
              },
              longPressCallback: () {
                TaskData.deleteTask(TaskData.tasks[index]);
              },
            );
          },
          itemCount: TaskData.tasks.length,
        );
      },
    );
  }
}
