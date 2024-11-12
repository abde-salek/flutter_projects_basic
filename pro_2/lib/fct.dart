import 'package:flutter/material.dart';

class TaskModel{
  final String title= 'task';
  final bool completed = false || true ;
}

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  
  //method of showdialog
  void showDialog(BuildContext context) {
    showDialog(context, builder: ( BuildContext context){
      return const AlertDialog(
        required.TaskModel.title,
        required.TaskModel.completed
      );
    });
  }
}