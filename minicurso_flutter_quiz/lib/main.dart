import 'package:flutter/material.dart';
import 'widgets/initial_screen.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen(),
    );
  }
}