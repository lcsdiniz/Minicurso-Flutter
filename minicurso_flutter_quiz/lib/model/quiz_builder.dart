import 'question.dart';

class QuizFactory {
  static List<Question> buildQuiz() {
    Question question = new Question(
        questionText: 'Qual a linguagem utilizada pelo Flutter?',
        alternatives: ['Dart', 'Python', 'Java', 'C'],
        questionAnswer: 'Dart',
        image:
        'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s900-c-k-c0xffffffff-no-rj-mo');
    Question question2 = new Question(
        questionText:
        'Se você deseja criar um widget sem estado, qual tipo de widget utilizar?',
        alternatives: ['Stateful', 'Inherited', 'Stateless', 'Material'],
        questionAnswer: 'Stateless',
        image:
        'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s900-c-k-c0xffffffff-no-rj-mo');
    List<Question> questions = [question, question2];

    return questions;
  }
}