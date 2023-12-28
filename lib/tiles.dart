import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {

  final String taskname;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  TodoTile({super.key,
    required this.taskname,
    required this.taskCompleted,
    required this.onChanged
  });


  @override
  Widget build(BuildContext context) {
    return Padding(   // Adding Padding to container
      padding: const EdgeInsets.all(20.0),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.purple[50],
            borderRadius: BorderRadius.circular(20)
        ),

        child: Padding(
          padding: EdgeInsets.all(30),
          child: Row(
            children: [
              Checkbox(value: taskCompleted, onChanged: onChanged),
              Text(taskname,
              style: TextStyle(fontSize: 16),),
            ],
          ),
        ),
      ),
    );
  }
}
