// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';


class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  TaskListState createState() => TaskListState();
}

class TaskListState extends State<TaskList> {

   // List of tasks
  late String? taskName;
  bool completed = false;
  List<String> tasks = [];
  
  //method of showdialog
  void showTask() {
    //bool tempChecked = completed; // Temporary variable for dialog
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setDialogState){
          return AlertDialog(
            title: const Text("CRUCH IT"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 7,),
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Task Title",
                    hintText: "Enter your task",
                  ),
                  onChanged: (value) {
                    taskName = value;
                    if (taskName != null)
                    {tasks.add(taskName !);}
                  },
                ),
                const SizedBox(height: 8, width: 8,),
              ],
            ),
            actions: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                        // Save the task when 'Save' is pressed
                        if (taskName?.isNotEmpty ?? false) { // Trim to avoid spaces-only tasks
                          setState(() {
                            tasks.add(taskName!); // Add the trimmed task
                          });
                           // Reset taskName
                          Navigator.of(context).pop(); // Close the dialog
                        } else {
                          print("Task name is empty. Please enter a valid task.");
                        }
                      },
                    child: const Text("Save", style: TextStyle(color: Colors.green),),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Close', style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
        );
        });        
        
      }
    );
  }
  
   // Create an instance
   // Call using the instance
  bool showCenterWidget = true;
  int index= 0;
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "TO DO LIST",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber[600],
          elevation: 10,
        ),
      body: showCenterWidget
              ?  const Center(child: Text("No Tasks for Today"),)
              :  ListView.builder(
          itemCount: index,
          itemBuilder: (BuildContext context, int index ) {  
          return Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellow[500],
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                  ),
                    child: Text(
                    tasks[index], // Task Name
                    style: const TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 24, // Font size
                    ),
                    ),
                ),),
            ],
          ); 
          }
        
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[500],
        onPressed: () {
          index = index + 1;
          showTask();
            if (showCenterWidget) { 
            showCenterWidget = false; // Switch value
            }
        },
        child: const Icon(
            Icons.add,
        ),
    ),
    ) ; // Placeholder for demo
  }
}