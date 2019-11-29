import 'package:flutter/material.dart';
import 'package:minicurso_flutter_quiz/widgets/quiz_screen.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Bem vindo ao meu quiz", style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurple
            ),),
            RaisedButton(
              child: Text('INICIAR QUIZ',
                  style: TextStyle(
                  color: Colors.white)),
              color: Colors.deepPurple,
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
            )
        ],
      )),
    );
  }
}
