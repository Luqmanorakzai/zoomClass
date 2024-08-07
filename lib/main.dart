
import 'package:flutter/material.dart';
import 'package:flutter_zoom/screens/GridViewScreen.dart';
import 'package:flutter_zoom/screens/list_view_builder.dart';
import 'package:flutter_zoom/screens/stack_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StackScreen(),
    );
  }
}

