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
                  onChanged: (value) {
                    setState(() {
                      taskName = value;
                    });
                  },
                  
                ),
                Checkbox(
                  value: tempChecked, onChanged: (tempChecked) {
                    setState(() {
                      tempChecked != tempChecked;
                    });
                  },)
                
              ],
            ),
        );
        });        
        
    });
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}