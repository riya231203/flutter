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
              color: Colors.blue,
            ),
          ),
          actions: [
            Icon(
              Icons.shopping_bag,
              color: Colors.blue,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.money,
              color: Colors.green,
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 252, 175, 200),
        ),
      ),
    );
  }
}
