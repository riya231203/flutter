import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarColorApp());
}

class AppBarColorApp extends StatefulWidget {
  const AppBarColorApp({super.key});

  @override
  State createState() => _AppBarColorAppState();
}

class _AppBarColorAppState extends State {
  bool colorChange = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar color",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar Color"),
          centerTitle: true,
          backgroundColor: colorChange ? Colors.blue : Colors.amber,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Change Appbar Color"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (colorChange) {
              colorChange = false;
            } else {
              colorChange = true;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
