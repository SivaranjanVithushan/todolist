import 'package:flutter/material.dart';
import 'package:todolist/models/task_data.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {
  String newTaskTitle = '';

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromARGB(255, 236, 26, 57),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              const SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 236, 26, 5),
                  ),
                ),
                child: const Text('Add', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
