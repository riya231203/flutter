import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: const Color.fromARGB(255, 240, 177, 198),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20),
              ),
              border: Border.all(color: Color.fromARGB(255, 104, 48, 27)),
            ),
          ),
        ),
      ),
    );
  }
}
