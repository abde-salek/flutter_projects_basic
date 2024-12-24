// ignore_for_file: unused_local_variable, avoid_print


import 'package:flutter/material.dart';


class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  TaskListState createState() => TaskListState();
}

class TaskListState extends State<TaskList> {
   // List of tasks
  bool completed = false;
  List<String> tasks = [];
  TextEditingController taskController = TextEditingController();
  // }
  // String taskPrint(){ NOT IDEAL § !
  //method of showdialog
  void showTask(){
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
                    taskController.text = value; 
                    //addTask(); already done with the save button
                    
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
                        if (taskController.text.trim().isNotEmpty) { // Trim to avoid spaces-only tasks
                          setState(() {
                            tasks.add(taskController.text.trim());
                            taskController.clear();
                          });
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
  bool showCenterWidget = true;
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
          itemCount: tasks.length,
          itemBuilder: (context, index) {  
          return Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellow[500],
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Text(
                    tasks[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),),
            ]
          );}
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[500],
        onPressed: () {
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