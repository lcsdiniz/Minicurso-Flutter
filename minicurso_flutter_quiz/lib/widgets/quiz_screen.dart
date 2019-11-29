import 'package:flutter/material.dart';
import 'package:minicurso_flutter_quiz/model/question.dart';
import 'package:minicurso_flutter_quiz/model/quiz_builder.dart';

import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions;
  int currentQuestion;
  int score;

  _QuizScreenState() {
    questions = QuizFactory.buildQuiz();
    currentQuestion = 0;
    score = 0;
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = this.questions[this.currentQuestion];
    return Scaffold(
      appBar: AppBar(
        title: Text('Pergunta #'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(currentQuestion.questionText, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ...currentQuestion.alternatives.map((alternative) {
              return RaisedButton(
                child: Text(alternative),onPressed: (){
                  setState(() {
                    if (currentQuestion.questionAnswer == alternative) {
                      print("Acertou");
                      this.score++;
                    }
                    else{
                      print("Errou");
                    }
                    if(this.currentQuestion == questions.length - 1){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ResultScreen(score: this.score,)),
                      );
                    }
                    else {
                      this.currentQuestion++;
                    }
                  });
              });
           })
          ],
        )
       ),
    );
  }
}
