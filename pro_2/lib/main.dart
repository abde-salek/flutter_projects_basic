// ignore_for_file: prefer_const_constructors, unused_label, avoid_print, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pro_2/fct.dart';
// ignore: unused_import


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool showCenterWidget = true;
  
  void switching(){
    setState(() {
      showCenterWidget =false;
    });
  }
  
  var UnObject = TaskListState(); // Create an instance
   // Call using the instance
  
  //ListView.builder();
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
        body: showCenterWidget

              ?  Center(child: Text("No Tasks for Today"),)
              :  ListView.builder (
          itemCount: TaskListState.taskName.length,
          itemBuilder: (BuildContext context, int index) {  
            index += 1;
          child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellow[500],
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                    child: Text(
                      TaskListState.taskName,
                    style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 24, // Font size
                ),
                    ),
                ),),
            ],
          );
          return null;},
        ),
        

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[500],
        onPressed: () {switching();
                      UnObject.showTask();},     //calling using an instance
          child: Icon(
            Icons.add,
            ),
    ),),);
  }
}