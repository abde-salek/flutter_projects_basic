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
  
  //ListView.builder();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home:  TaskList(),
      
      );
  }
}