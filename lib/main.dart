import 'package:flutter/material.dart';
import 'package:todolist/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return TaskData();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
