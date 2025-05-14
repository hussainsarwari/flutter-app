import 'questions.dart';
class Brain {
   List<Questions> _questionList = [
    Questions(question: "Is Flutter a UI toolkit?", answers: true),
    Questions(question: "Is Dart a programming language?", answers: true),
    Questions(question: "Is Flutter used for web development?", answers: true),
    Questions(question: "Is Flutter only for mobile apps?", answers: false),
    Questions(question: "Is Flutter open-source?", answers: true),
  ];
 

  getQuestion(questionIndex){
    return _questionList[questionIndex].question;
  }
  getAnswer(questionIndex){
    return _questionList[questionIndex].answers;
  }
  getquestionLength(){
    return _questionList.length;
  }
}
