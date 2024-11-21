import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'TodoModel.dart';

class ToDoAppUi extends StatefulWidget {
  const ToDoAppUi({super.key});

  @override
  State createState() => _ToDoAppUIState();
}

class _ToDoAppUIState extends State {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<Todomodel> todoCards = [
    Todomodel(
        title: "Flutter", description: "Dart, OOP", date: "17 October, 2024"),
    Todomodel(
        title: "Java", description: "Exception, OOP", date: "18 October, 2024"),
    Todomodel(
        title: "Python",
        description: "Generators, OOP",
        date: "19 October, 2024"),
  ];

  List<Color> cardColorsList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  void submit(bool doEdit, [Todomodel? todoObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (doEdit) {
        todoObj!.title = titleController.text;
        todoObj!.description = descriptionController.text;
        todoObj!.date = dateController.text;
      } else {
        todoCards.add(Todomodel(
            title: titleController.text,
            description: descriptionController.text,
            date: dateController.text));
      }
    }
    Navigator.of(context).pop();
    clearControllers();
    setState(() {});
  }

  void clearControllers() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void showBottomSheet(bool doEdit, [Todomodel? todoObj]) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
            padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: 12.0,
          right: 12.0,
          left: 12.0,
        ));
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create Todo",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Text(
              "Title",
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(0, 139, 148, 1.0)),
            ),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Description",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 139, 148, 1),
              ),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ))),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Date",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 139, 148, 1),
              ),
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(138, 139, 139, 1),
                  ),
                ),
                suffixIcon: const Icon(Icons.calendar_month_outlined),
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2024),
                  lastDate: DateTime(2025),
                );
                String formattedDate = DateFormat.yMMMd().format(pickedDate!);
                setState(() {
                  dateController.text = formattedDate;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (doEdit == true) {
                    submit(true, todoObj);
                  } else {
                    submit(false);
                  }
                },
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromRGBO(0, 139, 148, 1))),
                child: Text(
                  "Submit",
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1.0),
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: cardColorsList[index % cardColorsList.length],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset("assets/img6.png"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(todoCards[index].title),
                              Text(todoCards[index].description),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            todoCards[index].date,
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              titleController.text = todoCards[index].title;
                              descriptionController.text =
                                  todoCards[index].description;
                              dateController.text = todoCards[index].date;
                              showBottomSheet(
                                true,
                                todoCards[index],
                              );
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              todoCards.remove(todoCards[index]);
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.delete_outline_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(false);
        },
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
