import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device Width: ${MediaQuery.of(context).size.width}");
    print("Device Height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 250, 143, 178),
        ),
        body: ListView(
          children: [
            Image.network(
                "https://tse1.mm.bing.net/th?id=OIP.YzUraQWOziVdb8d0hXkZ8gHaFP&pid=Api&P=0&h=180",
                height: 400,
                width: 400),
            const Icon(
              Icons.catching_pokemon,
              color: Colors.yellow,
            ),
            const Text(
              "Pokemon",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network(
                "https://tse1.mm.bing.net/th?id=OIP.YzUraQWOziVdb8d0hXkZ8gHaFP&pid=Api&P=0&h=180",
                height: 400,
                width: 400),
            const Icon(
              Icons.catching_pokemon,
              color: Colors.yellow,
            ),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 30,
                color: Colors.amber,
                child: const Text(
                  "Press Me",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
