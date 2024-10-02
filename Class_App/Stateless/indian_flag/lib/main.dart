import "package:flutter/material.dart";

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
          title: const Text(
            "Flag",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 400,
                color: Colors.orange,
              ),
              Container(
                height: 80,
                width: 400,
                color: Colors.white,
                child: Image.network(
                    "https://tse1.mm.bing.net/th?id=OIP.pGwpzXebs43v0Rvv1CVVGgHaHa&pid=Api"),
              ),
              Container(
                height: 80,
                width: 400,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
