// ignore_for_file: prefer_const_constructors, unused_label, avoid_print, unused_local_variable

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// List<String> tasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5", "Task 6", "Task 7"];
List<String> tasks = [];
class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:  Scaffold(
        appBar: AppBar(
          title: Text(
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
        body: Center(
          child: Text('Your task list will be displayed here'),
        ),
        

      floatingActionButton: FloatingActionButton(
      onPressed: () {
  showDialog(       //  Open a dialog box 
    context: context,  // Provide context of the current widget tree
    builder: (context) {  // 3. Define a widget builder to construct the dialog's content
      String newTask = '';  // 4. Initialize an empty string to store the new task input

      // Return the dialog box with a title, text input, and action buttons
      return AlertDialog(
        title: Text("ENTER NEW TASK"),  // 6. Set the title of the dialog

        content: TextField(
          onChanged: (value) {  // 7. Capture the text input whenever the user types
            newTask = value;  // 8. Assign the typed value to `newTask`
          },
        ),

        actions: [
          TextButton(
            onPressed: () {  // action for the "Cancel" button
              Navigator.of(context).pop();  // 10. Close the dialog when "Cancel" is pressed
            },
            child: Text('Cancel'),  // 11. Label the button as "Cancel"
          ),
          TextButton(
            onPressed: () {  // 12. Define the action for the "Add" button
              // Logic to add task (e.g., _addTask(newTask)) can be placed here

              Navigator.of(context).pop();  // 13. Close the dialog after adding the task
            },
            child: Text('Add'),  // 14. Label the button as "Add"
          ),
        ],
      );
    },
  );
},
      backgroundColor: Colors.amber[400], // Add an onPressed function here
      child: Icon(
                  Icons.add, 
                  color: Colors.black,
                ), // The + icon
      //label: Text(''), // The text next to the icon
      ),
      
    )
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
