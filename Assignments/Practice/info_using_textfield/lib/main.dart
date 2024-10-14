import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cmpNameController = TextEditingController();
  String? name;
  String? cmpName;

  List<Map<String, String>> info = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Info",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.amber,
            )),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 30,
              ),
              decoration: const InputDecoration(
                hintText: "Enter Name",
                hintStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (String val) {
                print("Value: $val");
              },
              onEditingComplete: () {
                print("Editing Completed");
              },
              onSubmitted: (value) {
                print("Value Submitted: $value");
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: cmpNameController,
              style: const TextStyle(
                fontSize: 30,
              ),
              decoration: InputDecoration(
                hintText: "Enter Company Name",
                hintStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              name = nameController.text;
              print(name);
              cmpName = cmpNameController.text;
              print(cmpName);

              if (name != "" && cmpName != "") {
                info.add({
                  'name': nameController.text,
                  'cmpName': cmpNameController.text,
                });
              }
              nameController.clear();
              cmpNameController.clear();
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20),
                ),
                color: Color.fromARGB(255, 211, 210, 210),
              ),
              child: ListView.builder(
                itemCount: info.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Text(
                          "Name: ${info[index]['name']}",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "Company Name: ${info[index]['cmpName']}",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
