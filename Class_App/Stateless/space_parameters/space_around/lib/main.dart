import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 112, 60, 42),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 176, 207, 233),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
