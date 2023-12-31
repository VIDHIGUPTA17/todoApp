import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/Screens/WeekTask.dart';
import 'package:todoapp/widgets/todolist.dart';
// import 'package:todoapp/widgets/CustomTextField.dart';

class createtask extends StatefulWidget {
  const createtask({super.key});

  @override
  State<createtask> createState() => createtaskState();
}

class createtaskState extends State<createtask> {
  TextEditingController description = TextEditingController();
  TextEditingController taskname = TextEditingController();
  TextEditingController inputdate = TextEditingController();
  var selecteddate = DateTime.now();
  String endtime = "9:30 pm";
  String starttime = DateFormat("hh:mm a").format(DateTime.now()).toString();

  void addTask(String tasknamew) async {
    // Navigate to the AddTaskScreen and wait for a result
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => createtask()),
    );

    // Check if the result is not null (user added a task)
    if (result != null) {
      setState(() {
        // Add the task to the list
        todolist.add(result);
      });
    }
  }
//   ToDo createTask(String taskName, DateTime date) {
//   return ToDo(
//     taskName: taskName,
//     isCompleted: false,
//     date: date,
//   );
// }

//   void addx(String taskname, DateTime selecteddate) {
//     ToDo newtodo = createTask(taskname, selecteddate);
//  Navigator.pop(context, newtodo);
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 255, 1),
        body: ListView(children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: ma,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // width: 170,
                  // height: 84,
                  margin: const EdgeInsets.only(top: 52, left: 26),
                  child: const Text('CREATE NEW TASK',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Container(
                  // width: 100,
                  // height: 22,
                  margin: const EdgeInsets.only(top: 26, left: 26),
                  child: const Text(
                    'TASK NAME',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: TextField(
                    controller: taskname,
                    decoration: InputDecoration(
                      labelText: 'Task Name',
                      // hintText: "Task Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                ),

                // Row(
                //   children: [DateContainers()],
                // ),
                // Row(
                //   // mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Container(
                //       width: 240,
                //       margin: const EdgeInsets.all(18),
                //       child: TextField(
                //         controller: inputdate,
                //         decoration: InputDecoration(
                //           hintText: starttime,
                //           prefixIcon: IconButton(
                //               onPressed: () {
                //                 // onpressed;
                //                 gettime(isstarttime: true);
                //               },
                //               icon: const Icon(Icons.timer)),
                //           border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(5)),
                //         ),
                //       ),
                //     ),

                //     // timecontainer(starttime, gettime(isstarttime: true))
                //   ],
                // ),

                // Container(
                //   width: 240,
                //   margin: const EdgeInsets.all(18),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       hintText: endtime,
                //       prefixIcon: IconButton(
                //           onPressed: () {
                //             // onpressed;
                //             gettime(isstarttime: false);
                //           },
                //           icon: const Icon(Icons.timer)),
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(5)),
                //     ),
                //   ),
                // ),
                // timecontainer(endtime),
                // Container(
                //     // width: 115,
                //     // height: 22,
                //     margin: const EdgeInsets.only(top: 32, left: 26),
                //     child: const Text(
                //         textAlign: TextAlign.left,
                //         'Description',
                //         style: TextStyle(fontSize: 18))),
                // Padding(
                //   padding: const EdgeInsets.all(19),
                //   child: TextField(
                //     controller: description,
                //   ),
                // ),
                // Container(
                //     height: 18,
                //     width: 89,
                //     margin: const EdgeInsets.only(top: 47, left: 26),
                //     child: const Text('CATEGORY')),
                // Padding(
                //     padding: const EdgeInsets.fromLTRB(16, 12, 0, 0),
                //     child: Container(
                //       height: 45,
                //       child: SingleChildScrollView(
                //         scrollDirection: Axis.horizontal,
                //         child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             children: [
                // BuildCategory("Work"),
                // BuildCategory("Personal"),
                // BuildCategory("Office"),
                // BuildCategory("Shopping"),
                // BuildCategory("Others"),

                //   Container(
                //       margin: EdgeInsets.only(top: 25),
                //       decoration: BoxDecoration(
                //           gradient: LinearGradient(colors: [
                //         Color.fromARGB(1, 254, 152, 142),
                //         Color.fromARGB(1, 255, 100, 125)
                //       ])),
                //       child: Text(
                //         'LEARNING',
                //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                //       )),
                //   Container(
                //       margin: EdgeInsets.only(top: 25),
                //       decoration: BoxDecoration(
                //           gradient: LinearGradient(colors: [
                //         Color.fromARGB(1, 254, 152, 142),
                //         Color.fromARGB(1, 255, 100, 125)
                //       ])),
                //       child: Text(
                //         'MEETING',
                //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                //       )),
                // ]),
                // Align(
                //   alignment: FractionalOffset.center,
                //   child: ElevatedButton(
                //     child: Container(
                //         margin: const EdgeInsets.only(top: 30),
                //         decoration: const BoxDecoration(
                //             boxShadow: [],
                //             gradient: LinearGradient(
                //               begin: Alignment.topCenter,
                //               end: Alignment.bottomCenter,
                //               colors: [
                //                 Color.fromRGBO(254, 152, 142, 1),
                //                 Color.fromRGBO(255, 100, 125, 1)
                //               ],
                //             )),
                //         child: const Text(
                //           'CREATE TASK',
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             fontSize: 28,
                //             fontWeight: FontWeight.w500,
                //           ),
                //         )),
                //     onPressed: () {},
                //   ),
                // ),
                //             ]),
                //       )
                //     ),
                const Padding(padding: EdgeInsets.all(15)),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      validatedata();
                      List data = [taskname.text, description.text];
                      addTask(taskname.text);
                      // return taskname.text,

                      Navigator.pop(context, taskname.text);
                      Navigator.pushNamed(context, "main_screen");
                      // addTask(taskname.text);
                      // Navigator.pushNamed(context, 'WeekTask');
                      // WeekTask();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            // Gradient.linear()
                            const Color.fromARGB(255, 255, 100,
                                125)), // Change to your desired color
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 24.0),
                        )),
                    child: const Text("Create Task"),
                  ),
                )
              ]),
        ]));
  }

  Container DateContainers() {
    // TextEditingController dateController =
    //     TextEditingController(); // Initialize the controller

    return Container(
      width: 240,
      // height: 70,
      // color: Colors.amber,
      margin: const EdgeInsets.all(18),
      child: TextField(
        // ignore: unnecessary_null_comparison
        readOnly: widget == null ? false : true,

        autofocus: false,
        // controller: ,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            hintText: DateFormat.yMEd().format(selecteddate),
            prefixIcon: IconButton(
                onPressed: () {
                  getdate();
                },
                icon: const Icon(Icons.calendar_today)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }

  Padding BuildCategory(String category) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
            // margin: EdgeInsets.only(top: 25),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 254, 152, 142),
                      Color.fromARGB(255, 255, 100, 125)
                    ])),
            // width: 90,
            // height: 35,
            child: Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  category,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )));
  }

  validatedata() {
    print("Validating data...");
    print("Task Name: ${taskname.text}");
    print("Description: ${description.text}");
    if (taskname.text.isNotEmpty && description.text.isNotEmpty) {
      // print("Fields are empty. Showing snack bar...");

      Get.back();
    } else if (taskname.text.isEmpty || description.text.isEmpty) {
      print("Fields are empty. Showing snack bar...");

      Get.snackbar("Required", "All fields are madatory",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.black,
          colorText: Colors.black,
          icon: const Icon(Icons.warning_outlined));
    }
  }

  getdate() async {
    DateTime? pickdate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2030));
    if (pickdate != null) {
      setState(() {
        selecteddate = pickdate;
        print(selecteddate);
      });
    } else {
      print("no date");
    }
  }

  gettime({required isstarttime}) async {
    var picktime = await showtime();
    String formattime = picktime.format(context);
    if (picktime == null) {
      print("sdfghj");
    } else if (isstarttime == true) {
      setState(() {
        starttime = formattime;
      });
    } else if (isstarttime == false) {
      setState(() {
        endtime = formattime;
      });
    }
  }

  showtime() {
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
            hour: int.parse(starttime.split(":")[0]),
            minute: int.parse(starttime.split(":")[1].split(" ")[0])));
  }
}
