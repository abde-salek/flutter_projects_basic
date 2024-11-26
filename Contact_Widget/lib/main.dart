// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // Wrap everything inside MaterialApp
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "My Contact",
            style: TextStyle(color: Colors.grey),
            ),
          centerTitle: true,
          elevation: 2,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          //color: Colors.grey,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/va.jpg"),
                  radius: 50,
                  ),),
              
              SizedBox(height: 50),
              Text(
                "NAME:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.001,
                  ) ,
                ),
              SizedBox(height:3),
              Text(
                "MOAD EXPRESS £",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  ) ,
                ),
              SizedBox(height:20),
              Row(children:[
                Icon(
                  Icons.phone_callback,
                ),
                SizedBox(width: 4),
                Text(
                  "PHONE NUMBER:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.001,
                    ),
                ),
              ],),

              SizedBox(height:2),
              Text(
                "0700000094",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  ) ,
                ),
              SizedBox(height:20),
              
              Row(children:[
                Icon(
                  Icons.flag,
                ),
                SizedBox(width: 4),
              Text(
                "SLOGAN:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.001,
                  ) ,
                ),
              ],),
              Text(
                "WORK WORK WORK ,               No Result...",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  ) ,
                ),
              SizedBox(height:20),
              SizedBox(height:20),
              Row(
              crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Icon(
                    Icons.email,
                  ),
                  SizedBox(width: 2,),
                  Text(
                    "EMAIL:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.001,
                      ) ,
                  ),
                  SizedBox(width:8),
                  Text(
                    "MAD2000xyz@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.5,
                      fontWeight: FontWeight.w600,
                      ),
                  ),
                ],
              ),

              
              
            ],
          ),
        ),
      ),
    );
  }
}
