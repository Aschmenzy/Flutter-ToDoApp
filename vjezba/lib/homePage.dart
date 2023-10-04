// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vjezba/util/ToDoList.dart';
import 'package:vjezba/util/dialogBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["make something", false],
    ["Napravi skriptu", true],
  ];

//ako je cxBox stisnut
  void checkBoxChanged(bool value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  //novi zadatak
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Center(child: Text('To Do App')),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoList(
                taskName: toDoList[index][0],
                TaskCompleted: toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value!, index));
          },
        ));
  }
}
