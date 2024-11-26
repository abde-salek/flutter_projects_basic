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
  
  //ListView.builder();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:  TaskList(),
      
      );
  }
}