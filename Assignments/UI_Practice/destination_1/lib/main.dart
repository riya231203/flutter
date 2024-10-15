import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Where do you want to travel?",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(27, 48, 101, 1),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 360,
                  ),
                  SizedBox(
                    width: 500,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150,
                          ),
                          const Text(
                            "Select Destination",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(52, 111, 249, 1),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down_outlined,
                              color: Color.fromRGBO(52, 111, 249, 1), size: 25),
                        ],
                      ),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(233, 237, 248, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 33,
                    width: 33,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(52, 111, 249, 1),
                    ),
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Best Deals",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Sorted by lower price",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(179, 182, 187, 1),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down_outlined,
                              color: Color.fromRGBO(179, 182, 187, 1),
                              size: 30),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                height: 150,
                                width: 150,
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                height: 150,
                                width: 150,
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                height: 150,
                                width: 150,
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                height: 150,
                                width: 150,
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                height: 150,
                                width: 150,
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                height: 150,
                                width: 150,
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                height: 150,
                                width: 150,
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                height: 150,
                                width: 150,
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                child: SvgPicture.asset(
                                  "assets/img.svg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Popular Destinations",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Sorted by higher rating",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(179, 182, 187, 1),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromRGBO(179, 182, 187, 1),
                          )
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 205,
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.amber,
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/img2.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Mexico",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "848 Reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(179, 182, 187, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
