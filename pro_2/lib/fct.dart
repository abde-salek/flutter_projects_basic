import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  TaskListState createState() => TaskListState();
}

class TaskListState extends State<TaskList> {

  static String taskName= "";
  bool completed = false;
    List<Map<String, dynamic>> tasks = [];
    List<String> tasksV = [];
  //method of showdialog
  void showTask() {
    bool tempChecked = completed; // Temporary variable for dialog

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setDialogState){
          return AlertDialog(
            title: const Text("EDIT"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Task Title",
                    hintText: "Enter your task",
                  ),
                  value: TaskListState.taskName,
                ),
                const Checkbox(
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