class Question {
  String image;
  String questionText;
  List<String> alternatives;
  String questionAnswer;

  Question({this.image, this.questionText, this.questionAnswer, this.alternatives}){}

  factory Question.fromJson(Map<String, dynamic> json){
    List<String> alternativesJson = json['alternatives'];
    return Question(
      image: json['image'],
      questionText: json['questionText'],
      questionAnswer: json['questionAnswer'],
      alternatives: List<String>.from(alternativesJson),
    );
  }

}