import 'package:flutter/material.dart';
import 'package:to_do_app/tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // list of todo tasks
  List todoList = [
    ["This is todo list ",false],
    ["To make the april fool",false]
  ];

  // checkbox was tapped
  void checkedBoxChanged(bool? value, int index){
  setState(() {
    todoList[index][1] = !todoList[index][1];
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("TO DO",
        style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.w500,fontSize: 35),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context,index){
          return TodoTile(
              taskname: todoList[index][0],
              taskCompleted: todoList[index][1] ,
              onChanged: (value) => checkedBoxChanged(value, index),
          );
        }
      ),
    );

  }
}
