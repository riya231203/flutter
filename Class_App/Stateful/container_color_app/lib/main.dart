import "package:flutter/material.dart";

void main() {
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget {
  const ContainerColorApp({super.key});

  @override
  State<ContainerColorApp> createState() => _ContainerColorAppState();
}

class _ContainerColorAppState extends State<ContainerColorApp> {
  bool colorChange = true;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container Color App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Color App"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: (colorChange)
                ? const Color.fromARGB(255, 5, 60, 104)
                : Colors.orangeAccent,
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
          child: const Icon(Icons.arrow_upward),
          shape: const CircleBorder(eccentricity: BorderSide.strokeAlignCenter),
        ),
      ),
    );
  }
}
