import 'package:flutter/material.dart';
import 'package:to_do_app/tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do App",
        style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[100],

      ),
      body: ListView(
        children: [
          TodoTile()
        ],
      ),
    );
  }
}
