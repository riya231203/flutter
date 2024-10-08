import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device Height: ${MediaQuery.of(context).size.height}");
    print("Device Width: ${MediaQuery.of(context).size.width}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scroll",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 47, 85),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 252, 165, 194),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 243, 227, 181),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  "https://techstory.in/wp-content/uploads/2015/12/Infosys.jpg",
                  width: 320,
                ),
                Container(
                  height: 100,
                  width: 320,
                  color: const Color.fromARGB(255, 99, 183, 252),
                ),
                Image.network(
                    "https://tse3.mm.bing.net/th?id=OIP.xp7o-cIRgoeJA9WDBNuLFAHaD4&pid=Api&P=0&h=180",
                    width: 320),
                Container(
                  height: 100,
                  width: 320,
                  color: const Color.fromARGB(255, 99, 183, 252),
                ),
                Image.network(
                    "https://tse3.mm.bing.net/th?id=OIP.NZpH_Jw72d72-3M4JGQcrgHaEK&pid=Api&P=0&h=180"),
                Container(
                  height: 100,
                  width: 320,
                  color: const Color.fromARGB(255, 99, 183, 252),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 248, 202, 133),
      ),
    );
  }
}
