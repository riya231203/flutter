import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            "Scrollable Images",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoDQC3jNu6AWFPmK411EgMszal966sG8MEBQ&s",
                  height: 300,
                  width: 150),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5MfTikD5sshtOllyQIs67wsL2b59IBLajFg&s",
                  height: 300,
                  width: 150),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKn-X2ZRRr7DWK4gEnkQFFo_NSpS4dxoS-gg&s",
                  height: 300,
                  width: 150),
              Image.network(
                  "https://thumbs.dreamstime.com/b/wooden-pathway-lush-green-tropical-jungle-sunlight-serene-nature-walk-concept-wooden-pathway-lush-green-322646384.jpg",
                  height: 300,
                  width: 150),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWszRuSIMW0GDycUX9U6fH4f-tjLudRRnqkg&s",
                  height: 300,
                  width: 150),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZdM4Naw6g6mBZtWbsk8r4u0DEauhmvKrpFg&s",
                  height: 300,
                  width: 150),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlst33n37g93m8liDygxtpqoPise6krFHX8g&s",
                  height: 300,
                  width: 150),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvBZLb1x1RXnLhfqS5_43zXg7Fu0FrHQCvFg&s",
                  height: 300,
                  width: 150),
            ],
          ),
        ),
      ),
    );
  }
}
