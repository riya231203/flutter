import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "AppBar Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.amber,
            ),
          ),
          actions: [
            Icon(Icons.airlines, color: Colors.amber),
          ],
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 133, 89, 73),
        ),
      ),
    );
  }
}
