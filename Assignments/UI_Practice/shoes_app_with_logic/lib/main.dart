import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 300,
              child: Image.network(
                "https://tse1.mm.bing.net/th?id=OIP.TLQdvWS7JiqjXJ2ZaWS02wHaEJ&pid=Api&P=0&h=180",
                fit: BoxFit.fill,
              ),
            ),
           const SizedBox(
              child: Text(
                "Nike Air Force 1 ''07",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 50,
              //width: 200,
            ),
            Row(
              children: [
                SizedBox(
                  width: 390,
                ),
                SizedBox(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      //backgroundColor: Colors.,
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    ),
                    child: Text(
                      "SHOES",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 18),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  child: ElevatedButton(
                    child: Text(
                      "FOOTWEAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              width: 400,
              child: Text(
                "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era-echoing '80s construction and reflective-design Swoosh logos",
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 415,
                ),
                SizedBox(
                  child: Text(
                    "Quantity ",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (quantity > 0) {
                      quantity--;
                      setState(() {});
                    }
                  },
                  child: Icon(Icons.remove, size: 30),
                ),
                Container(
                  height: 25,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 168, 167, 167),
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                  child: Text(
                    "$quantity",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    quantity++;
                    setState(() {});
                  },
                  child: Icon(Icons.add, size: 30),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "  PURCHASE  ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
