import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
void main() {
  runApp(ToDoApp());
}
class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
