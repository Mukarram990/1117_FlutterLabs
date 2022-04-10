import 'Question.dart';
class QuestionBank{
  // ignore: non_constant_identifier_names
  //ecan
  int _QuestionNumber=0;
  //
  final List <Questions> _questionBank=[
    Questions('Question 1', false),
    Questions('Question 2', true),
    Questions('Question 3', true),
    Questions('Question 4', true),
    Questions('Question 5', false),
    Questions('Question 6', false),
    Questions('Question 7', true),
    Questions('Question 8', true),
    Questions('Question 9', true),
    Questions('Question 10', false),
  ];

   void nextQuestions(){
       if(_QuestionNumber<_questionBank.length-1){
          _QuestionNumber++;
       }
   }


  String GetQuestions(){
    return _questionBank[_QuestionNumber].QuestionString;
  }


  bool CorrectAnswer(){
      return _questionBank[_QuestionNumber].AnswerText;
  }

  bool isFinished() {
    if (_QuestionNumber >=_questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }


  void reset() {
    _QuestionNumber = 0;
  }

}