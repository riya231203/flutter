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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.pink, width: 5),
                ),
                color: Colors.amber,
              ),
              child: Text(
                "Hello Icubators",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
