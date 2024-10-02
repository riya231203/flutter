import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Containers"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 200,
                color: const Color.fromARGB(255, 44, 35, 35),
              ),
              Container(
                height: 100,
                width: 200,
                color: const Color.fromARGB(255, 85, 2, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
