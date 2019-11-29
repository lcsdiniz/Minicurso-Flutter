import 'package:flutter/material.dart';
import 'hello_world_widget.dart';

void main() => runApp(HelloWorld());

class HelloWorld extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HelloWorldWidget(),
    );
  }
}