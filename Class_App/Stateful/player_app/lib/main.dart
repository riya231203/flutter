import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State createState() => _PlayerAppState();
}

class _PlayerAppState extends State {
  int _counter = 0;

  List<String> playerList = <String>[
    "https://tse3.mm.bing.net/th?id=OIP.d1vodNGn1fpzwezUjN_UWgHaEo&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.QCr5urDhBFNbviRBVlVDZAHaE8&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.7KSr3PxxSCRFT_0XEZFD5AHaD4&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.kVUm8yuWuijHXyzaQwTUaAHaGt&pid=Api&P=0&h=180",
    "https://tse2.mm.bing.net/th?id=OIP.a5BKOU3yTqZUkDRLnRbSlwHaFj&pid=Api&P=0&h=180"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Players",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text("Players"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                playerList[_counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_counter < playerList.length - 1) {
              _counter++;
            } else {
              _counter = 0;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
