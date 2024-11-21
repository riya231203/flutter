import "package:flutter/material.dart";
import 'package:complete_basic_todo_list/todo_app_ui.dart';
import 'todo_app_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoAppUi(),
    );
  }
}
