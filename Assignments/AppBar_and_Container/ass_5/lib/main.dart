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
        appBar: AppBar(
          title: const Text(
            "Image Network",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  "https://t3.ftcdn.net/jpg/03/77/93/14/360_F_377931465_txu2WCMcmQL87ARK6ztPP2Udor5waNDJ.jpg",
                  height: 150,
                  width: 150),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG9q-B112b0RiupZXPvPKTLlvhbMcNhjTo3w&s",
                height: 150,
                width: 150,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXizvsLxC0XFYodu3qaWxk_7z-KaND7o7-Kw&s",
                  height: 150,
                  width: 150),
            ],
          ),
        ),
      ),
    );
  }
}
