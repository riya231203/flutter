import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:screen_4/notifications.dart';
import './payment_screen.dart';
//import './cart.dart';

class selectedDocument extends StatefulWidget {
  const selectedDocument({super.key});

  @override
  State createState() => _selectedDocumentState();
}

class _selectedDocumentState extends State {
  int noOfCopies = 1;
  bool isColor = true;
  String selectedPaperSize = 'A4';
  double cartTotal = 0.0;

  String? selectedContainer;
  String? selectedOrientation;

  void updateCart(String printType) {
    if (printType == "black_white") {
      cartTotal = 2.0;
    } else if (printType == "color") {
      cartTotal = 10.0;
    }
  }

  List<String> paperSizes = ['A4', 'A5', 'Letter', 'Legal'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Print Details",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationsScreen()));
              },
              icon: Icon(Icons.notifications, color: Colors.black, size: 35),
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationsScreen()),
            );
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Print Settings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Customise your printouts",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 241, 241, 241),
                  border: Border.all(color: Colors.black12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '''Your Selected Documents
                            ''',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 156, 154, 154),
                            width: 0.1,
                          ),
                          color: Color.fromARGB(255, 228, 218, 228),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.folder,
                              color: Color.fromARGB(255, 250, 176, 40),
                              size: 80,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "File Name",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "4 files",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Customisation Options",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "Copies of this file you want to print",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow.shade200,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      // spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.file_copy_outlined,
                      size: 60,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Add Number of Copies",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: const Icon(
                                  Icons.remove,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                onTap: () {
                                  setState(() {
                                    if (noOfCopies > 1) {
                                      noOfCopies--;
                                    }
                                  });
                                },
                              ),
                              Container(
                                width: 40,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Center(
                                  child: Text(
                                    "$noOfCopies",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: const Icon(Icons.add,
                                    color: Colors.black, size: 35),
                                onTap: () {
                                  setState(() {
                                    if (noOfCopies < 20) {
                                      noOfCopies++;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "Choose Print Colour",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 241, 241, 241),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.color_lens_outlined,
                            size: 55,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Save money with black & white or get color printouts!",
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedContainer = 'bw';
                                    updateCart('black_white');
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: selectedContainer == "bw"
                                            ? Colors.blue
                                            : Colors.transparent,
                                        width: 1.5),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: selectedContainer == 'bw'
                                                  ? Colors.blue
                                                  : Colors.transparent,
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/venn.svg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        "B&W",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\u20B92/ page",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedContainer = "color";
                                    updateCart("color");
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: selectedContainer == "color"
                                            ? Colors.blue
                                            : Colors.transparent,
                                        width: 1.5),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                                  selectedContainer == "color"
                                                      ? Colors.blue
                                                      : Colors.transparent,
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/rgb.svg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        "Color",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\u20B910/page",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Choose Page Orientation",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Select the orientation that best complements your document",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOrientation = "portrait";
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 8, bottom: 8),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow.shade200,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            offset: Offset(3, 3),
                          ),
                        ],
                        border: Border.all(
                          color: selectedOrientation == "portrait"
                              ? Colors.blue
                              : Colors.transparent,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 100,
                            child: SvgPicture.asset(
                              "assets/portrait.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Portrait",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOrientation = "landscape";
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 8, bottom: 8),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow.shade200,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            offset: Offset(3, 3),
                          ),
                        ],
                        border: Border.all(
                          color: selectedOrientation == "landscape"
                              ? Colors.blue
                              : Colors.transparent,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 100,
                            child: SvgPicture.asset(
                              "assets/landscape.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Landscape",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Select Paper Size",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: DropdownButton<String>(
                      value: selectedPaperSize,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedPaperSize = newValue!;
                        });
                      },
                      dropdownColor: const Color.fromARGB(255, 236, 228, 228),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                      items: paperSizes
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow.shade200,
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset("assets/riya/cart.svg",
                            height: 40, width: 40),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total $noOfCopies page",
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\u20B9${(cartTotal * noOfCopies).toStringAsFixed(2)}",
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentScreen()));
                        },
                        child: const Text(
                          "View Cart",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.green),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
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
