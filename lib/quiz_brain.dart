import 'question.dart';

int _questionNumber = 0;

class QuizBrain {
  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Fasil is a handsome man', true),
    Question('A slag\'s blood is green.', true),
    Question('Ethiopia is a beautiful Country', true),
    Question('This is JS App', false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    // return _questionBank.last.questionText ==
    //     _questionBank[_questionNumber].questionText;

    if (_questionNumber >= _questionBank.length - 1) {
      print(_questionBank.length);
      return true;
    } else {
      return false;
    }
  }

  int reset() {
    return _questionNumber = -1;
  }
}
