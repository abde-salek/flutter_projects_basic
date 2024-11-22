import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  TaskListState createState() => TaskListState();
}

class TaskListState extends State<TaskList> {

  List<String> tasks = [ ]; // List of tasks
  static String taskName= "";
  bool completed = false;
  
  //method of showdialog
  void showTask() {
    //bool tempChecked = completed; // Temporary variable for dialog
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
                const SizedBox(height: 8,),
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
              ],
            ),
          actions: [
              Row(
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                        // Save the task when 'Save' is pressed
                        if (taskName.isNotEmpty) {
                          setState(() {
                            tasks.add(taskName); // Add task to the list
                          });
                          Navigator.pop(context); // Close the dialog
                        }
                      },
                      child: const Text("Save"),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
          ],
        );
        });        
        
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // Placeholder for demo
  }
}