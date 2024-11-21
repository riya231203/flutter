import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notifications.dart';

class OrderConfirmationScreen extends StatefulWidget {
  const OrderConfirmationScreen({super.key});

  @override
  State createState() => _OrderConfirmationScreenState();
}

class _OrderConfirmationScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Order",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsScreen()),
                );
              },
              icon: Icon(Icons.notifications, size: 30))
        ],
      ),
      body: Center(
          child: Column(
        children: [
          SvgPicture.asset("assets/order.svg", height: 500, width: 500),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Continue Shopping",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_right_alt_sharp,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
