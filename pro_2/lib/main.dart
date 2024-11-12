// ignore_for_file: prefer_const_constructors, unused_label, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
// import 'lib/fct/fct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

List<String> tasks = [];

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
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
        body: ListView (
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Row(
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
                        "Task1",
                          style: TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: 24, // Font size
                      ),
                          ),
                      ),),
                  ],
                ),
              ],
        ),
        

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[500],
        child: Icon(
          Icons.add,
          ),
      onPressed: () {
        //AddTask;
      
},
    ),),);
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
