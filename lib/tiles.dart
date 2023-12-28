import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(   // Adding Padding to container
      padding: const EdgeInsets.all(25.0),
      child: Container(

        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Text('A To Do Tile appear here',
          style: TextStyle(fontSize: 16),),
        ),

        decoration: BoxDecoration(
            color: Colors.purple[50],
            borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}
