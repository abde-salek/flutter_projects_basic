// ignore_for_file: prefer_const_constructors, unused_label

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          backgroundColor: Colors.amber[700],
          elevation: 10,
        ),
        body: const Center(
          child: Text("HEY"),
        ),
        floatingActionButton: FloatingActionButton(
      onPressed: (){ }, // Add an onPressed function here
      child: Icon(Icons.add), // The + icon
      //label: Text(''), // The text next to the icon
    ),
    ));
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
