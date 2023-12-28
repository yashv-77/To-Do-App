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
      padding: const EdgeInsets.only(left:20.0,right: 20.0,top: 20.0),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.purple[50],
            borderRadius: BorderRadius.circular(20)
        ),

        child: Padding(
          padding: EdgeInsets.all(23),
          child: Row(
            children: [
              Checkbox(value: taskCompleted, onChanged: onChanged),
              Text(taskname,
              style: TextStyle(fontSize: 16,
              decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
