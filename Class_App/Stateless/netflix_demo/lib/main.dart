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
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color>[Colors.red, Colors.black]),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.movie),
              color: Colors.black,
            ),
          ],

          //backgroundColor: Colors.red,
        ),
        body: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Thriller Movies",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(7),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROodmTzHbul-WBQMWsWTmaXLGnNL1EpdTDDA&s"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu5yX5eCVZqwMS0TVXjJpWwEeV37xG6SUWOA&s"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRevD3nclSBb6k57fFKezxAFrUWdyMi5y2TKA&s"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiaIa4kpph44FMmz3aKA_tpMRwgHPcqsLTyQ&s"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWSxKecNTRWvIyJZulYdJ4YcKxnqbsqlS_rw&s"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://i.ebayimg.com/images/g/e2QAAOSwlCxizBGk/s-l400.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://i0.wp.com/www.yourentertainmentcorner.com/wp-content/uploads/2020/12/Reunion-movie-poster-Julia-Ormond-Dark-Sky-Films.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
