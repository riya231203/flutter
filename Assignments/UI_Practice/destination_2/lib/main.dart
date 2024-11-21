import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_arrow_left,
          size: 30,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 32,
          ),
        ],
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "London",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              TextSpan(
                text: " (England)",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromRGBO(27, 48, 101, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Included",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "For more details press on the icons.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(179, 182, 187, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 73,
                        width: 73,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(53, 109, 250, 1),
                            border: Border.all(
                                color: Color.fromRGBO(53, 109, 250, 1),
                                width: 2)),
                        child: Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(53, 109, 250, 1),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                              //strokeAlign: BorderSide.strokeAlignOutside
                            ),
                          ),
                          child: Icon(
                            Icons.flight,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Flight",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 73,
                        width: 73,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(53, 109, 250, 1),
                            border: Border.all(
                                color: Color.fromRGBO(53, 109, 250, 1),
                                width: 2)),
                        child: Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(53, 109, 250, 1),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                              //strokeAlign: BorderSide.strokeAlignOutside
                            ),
                          ),
                          child: Icon(
                            Icons.hotel,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Hotel",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 73,
                        width: 73,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(53, 109, 250, 1),
                            border: Border.all(
                                color: Color.fromRGBO(53, 109, 250, 1),
                                width: 2)),
                        child: Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(53, 109, 250, 1),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                              //strokeAlign: BorderSide.strokeAlignOutside
                            ),
                          ),
                          child: Icon(
                            Icons.directions_car,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Car",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Container(
                        height: 73,
                        width: 73,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(53, 109, 250, 1),
                            border: Border.all(
                                color: Color.fromRGBO(53, 109, 250, 1),
                                width: 2)),
                        child: Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(53, 109, 250, 1),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                              //strokeAlign: BorderSide.strokeAlignOutside
                            ),
                          ),
                          child: Icon(
                            Icons.explore,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Tour",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Rating & Reviews",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(228, 161, 2, 1),
                      size: 35,
                    ),
                    Text(
                      "4.6",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(228, 161, 2, 1)),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Sorted by recent reviews",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(179, 182, 187, 1)),
                    ),
                    Icon(Icons.keyboard_arrow_down,
                        color: Color.fromRGBO(179, 182, 187, 1), size: 35),
                    Spacer(),
                    Text(
                      "848 Reviews",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(179, 182, 187, 1)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 170,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(233, 237, 248, 1)),
                      child: Center(
                        child: Container(
                          height: 138,
                          width: 310,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SvgPicture.asset(
                            "assets/img4.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 170,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(233, 237, 248, 1)),
                      child: Center(
                        child: Container(
                          height: 138,
                          width: 310,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SvgPicture.asset(
                            "assets/img4.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 170,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(233, 237, 248, 1)),
                      child: Center(
                        child: Container(
                          height: 138,
                          width: 310,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SvgPicture.asset(
                            "assets/img4.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 170,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(233, 237, 248, 1)),
                      child: Center(
                        child: Container(
                          height: 138,
                          width: 310,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SvgPicture.asset(
                            "assets/img4.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 170,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(233, 237, 248, 1)),
                      child: Center(
                        child: Container(
                          height: 138,
                          width: 310,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SvgPicture.asset(
                            "assets/img4.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Gallery",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Sorted by recent photos",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(179, 182, 187, 1)),
                  ),
                  Icon(Icons.keyboard_arrow_down,
                      color: Color.fromRGBO(179, 182, 187, 1), size: 35)
                ],
              ),
              SizedBox(
                height: 7,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/img5.svg",
                            fit: BoxFit.fill)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/img5.svg",
                            fit: BoxFit.fill)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/img5.svg",
                            fit: BoxFit.fill)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/img5.svg",
                            fit: BoxFit.fill)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/img5.svg",
                            fit: BoxFit.fill)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/img5.svg",
                            fit: BoxFit.fill)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/img5.svg",
                            fit: BoxFit.fill)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset("assets/img5.svg",
                            fit: BoxFit.fill)),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
