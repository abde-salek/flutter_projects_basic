import 'package:flutter/material.dart';

class TaskModel{
  final String title= 'task';
  final bool completed = false || true ;
}

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  String taskName= "";
  bool completed = false;

  //method of showdialog
  void showTask() {
    bool tempChecked = completed; // Temporary variable for dialog

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setDialogState){
          return const AlertDialog(
            title: Text("EDIT"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                    // onChanged: (value) {
                    //   setDialogState(() {
                    //     taskName = value;
                    //   },);
                    // },
                  decoration: InputDecoration(
                    labelText: "Task Title",
                    hintText: "Enter your task",
                  ),
                  value: taskName,
                ),
                Checkbox(
                  value: completed, onChanged: (value) {
                    setState(() {
                      completed = value;
                    });
                  },)
                
              ],
            ),
        );
        });        
        
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: completed , onChanged: onChanged)
      ],
    );
  }
}