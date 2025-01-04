// ignore_for_file: unused_local_variable, avoid_print
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key, required});

  // ignore: library_private_types_in_public_api
  @override
  TaskListState createState() => TaskListState();
}

class TaskListState extends State<TaskList> {
   // List of tasks
  //bool isCompleted = false;
  late List<String> tasks = [];
  final taskController = TextEditingController();
  Function (bool?)? onChanged;

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
                            taskCompletionStatus.add(false);
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
        });},);
  }
  bool showCenterWidget = true;
  int i = 0;
  // tasks is initialized but arnow
  List<bool> taskCompletionStatus= [];
  
  @override
  void initState() {
    super.initState();
  }

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
          itemBuilder: (context, i) {  
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
                  child: Row(
                  children: [
                  Checkbox(
                    value: taskCompletionStatus[i],
                    onChanged: (bool? value) {
                      setState(() {
                        taskCompletionStatus[i] = !taskCompletionStatus[i];
                      });
                    },),
                  const SizedBox(width: 7,),
                  Expanded(
                    child: Text(
                    tasks[i],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      decoration: taskCompletionStatus[i]
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                    ),
                  ),),],),
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