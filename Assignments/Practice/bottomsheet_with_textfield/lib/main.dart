import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BottomSheet with Textfield",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  String? title;
  String? description;
  String? date;

  List<Map<dynamic, dynamic>> todoList = [];

  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: const Text(
                    "Create To-Do",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Title",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                    //textAlign: TextAlign.left,
                  ),
                ),
                TextField(
                  controller: titleController,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Title",
                    hintStyle: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: const Text(
                    "Description",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextField(
                  controller: descController,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Description",
                    hintStyle: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: const Text(
                    "Date",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                ),
                TextField(
                  controller: dateController,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Date",
                    hintStyle: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                    ),
                    suffixIcon: Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      title = titleController.text;
                      description = descController.text;
                      date = dateController.text;

                      if (title != "" && description != "" && date != "") {
                        todoList.add({
                          'title': titleController.text,
                          'description': descController.text,
                          'date': dateController.text,
                        });
                        titleController.clear();
                        descController.clear();
                        dateController.clear();
                        setState(() {});
                      }
                    },
                    child: Container(
                      width: 500,
                      child: Center(
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BottomSheet with TextField",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: const Text(
          "BottomSheet with TextField Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBottomSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
