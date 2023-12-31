import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/widgets/todolist.dart';

class ToDoCon extends StatefulWidget {
  final String taskname;
  // // final String taskdescription;
  // final ValueChanged<bool?>? onChanged;
  final bool taskcomplete;
  Function(BuildContext)? deletefun;
  Function(BuildContext)? editfunc;

  Function(bool?)? onchanged;
  // Function(bool?)? onchnaged;
  ToDoCon(
      {super.key,
      required this.taskname,
      // required this.taskdescription,
      required this.taskcomplete,
      required this.onchanged,
      // required this.onChanged,
      required this.deletefun,
      required this.editfunc,
      required Null Function(bool? value) onChanged});

  @override
  State<ToDoCon> createState() => _ToDoConState();
}

class _ToDoConState extends State<ToDoCon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  // bool? ischecked = false;
  late bool ischecked;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _offsetAnimation = _controller.drive(
      Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ),
    );
    ischecked = widget.taskcomplete;
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: SlideTransition(
        position: _offsetAnimation,
        child: Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: widget.deletefun,
                icon: FontAwesomeIcons.deleteLeft,
              ),
              SlidableAction(
                onPressed: widget.editfunc,
                icon: Icons.edit,
              )
            ],
          ),
          child: Container(
            width: 700,
            height: 100,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: AlignmentDirectional.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 250, 140, 119),
                      Color.fromARGB(255, 243, 48, 96),
                    ]),
                borderRadius: BorderRadius.circular(13)),
            padding: EdgeInsets.all(9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    // Checkbox(
                    //     key: GlobalKey(),
                    //     value: ischecked,
                    //     activeColor: Colors.amber,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         ischecked = value!;
                    //       });
                    //     }),
                    Text(
                      widget.taskname,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.arrowLeft,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// class ToDoTile extends StatelessWidget {
//   final String taskName;
//   final bool taskCompleted;
//   Function(bool?)? onChanged;
//   Function(BuildContext)? deleteFunction;

//   ToDoTile({
//     super.key,
//     required this.taskName,
//     required this.taskCompleted,
//     required this.onChanged,
//     required this.deleteFunction,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
//       child: Slidable(
//         endActionPane: ActionPane(
//           motion: StretchMotion(),
//           children: [
//             SlidableAction(
//               onPressed: deleteFunction,
//               icon: Icons.delete,
//               backgroundColor: Colors.red.shade300,
//               borderRadius: BorderRadius.circular(12),
//             )
//           ],
//         ),
//         child: Container(
//           padding: EdgeInsets.all(24),
//           decoration: BoxDecoration(
//             color: Colors.yellow,
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Row(
//             children: [
//               // checkbox
//               Checkbox(
//                 value: taskCompleted,
//                 onChanged: (value) {
//                   onChanged?.call(value);
//                 },
//                 activeColor: Colors.black,
//               ),

//               // task name
//               Text(
//                 taskName,
//                 style: TextStyle(
//                   decoration: taskCompleted
//                       ? TextDecoration.lineThrough
//                       : TextDecoration.none,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
