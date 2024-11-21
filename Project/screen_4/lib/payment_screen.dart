import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'order_confirmation_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State {
  String selectedPaymentMethod = 'Cash on Delivery';
  TextEditingController upiIdController = TextEditingController();
  FocusNode upiFocusNode = FocusNode();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();

    upiIdController.addListener(() {
      setState(() {
        isButtonEnabled = upiIdController.text.isNotEmpty;
      });
    });

    upiFocusNode.addListener(() {
      if (upiFocusNode.hasFocus) {
        setState(() {
          selectedPaymentMethod = 'ENTER UPI ID';
        });
      }
    });
  }

  void _PaymentMethod(String? value) {
    setState(() {
      selectedPaymentMethod = value!;
    });
  }

  void _onVerify() {
    if (isButtonEnabled) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.of(context).pop();
            });

            return AlertDialog(
              backgroundColor: Colors.white,
              shadowColor: Colors.grey.withOpacity(1.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Text(
                "Verification Successful!!",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            );
          });
    }
    print('UPI ID Verified : ${upiIdController.text}');
  }

  @override
  void dispose() {
    upiFocusNode.dispose();
    upiIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.payment,
              size: 33,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Select a payment method",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "RECOMMENDED",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 82, 81, 81)),
              ),
              GestureDetector(
                onTap: () {
                  _PaymentMethod('Cash on Delivery');
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8, top: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(255, 211, 210, 210))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'Cash on Delivery',
                          groupValue: selectedPaymentMethod,
                          onChanged: _PaymentMethod,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        "Cash on Delivery/Pay on Delivery",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    SvgPicture.asset(
                                      "assets/note.svg",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ],
                                ),
                                Text(
                                  "Scan and Pay at delivery with Print&Delivery app and win rewards",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green,
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
              ),
              SvgPicture.asset(
                "assets/upi2.svg",
                height: 20,
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  _PaymentMethod('Google Pay');
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 5, top: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromARGB(255, 211, 210, 210),
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'Google Pay',
                          groupValue: selectedPaymentMethod,
                          onChanged: _PaymentMethod,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Google Pay",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      "assets/gpay.svg",
                                      height: 30,
                                      width: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 8, bottom: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromARGB(255, 211, 210, 210),
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'PhonePe',
                          groupValue: selectedPaymentMethod,
                          onChanged: _PaymentMethod,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "PhonePe",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          "assets/phonepe.svg",
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _PaymentMethod('Paytm');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(255, 211, 210, 210),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'Paytm',
                          groupValue: selectedPaymentMethod,
                          onChanged: _PaymentMethod,
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Paytm',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        )),
                        Spacer(),
                        SvgPicture.asset(
                          "assets/paytm.svg",
                          height: 30,
                          width: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                "OTHER WAYS",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 82, 81, 81),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _PaymentMethod('ENTER UPI ID');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 8, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: Color.fromARGB(255, 211, 210, 210)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'ENTER UPI ID',
                          groupValue: selectedPaymentMethod,
                          onChanged: _PaymentMethod,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'ENTER UPI ID',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  SvgPicture.asset(
                                    "assets/bhim.svg",
                                    height: 30,
                                    width: 30,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: TextField(
                                        controller: upiIdController,
                                        focusNode: upiFocusNode,
                                        style: const TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        obscureText: false,
                                        decoration: const InputDecoration(
                                          hintText: "Enter UPI ID",
                                          hintStyle: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.grey,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(7),
                                              ),
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 211, 210, 210),
                                              )),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                      onPressed: () {
                                        isButtonEnabled ? _onVerify() : null;
                                        style:
                                        ElevatedButton.styleFrom(
                                          backgroundColor: isButtonEnabled
                                              ? const Color.fromARGB(
                                                  255, 245, 238, 177)
                                              : Colors.yellow,
                                        );
                                      },
                                      child: Text(
                                        "Verify",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      )),
                                ],
                              ),
                              Text(
                                "The UPI ID is in the format of name/phone number@bankname",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderConfirmationScreen()));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.yellow)),
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
