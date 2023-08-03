import 'package:flutter_codigo_quizapp/question.dart';

class QuizBrain {
  List<Question> _questions = [
    Question(questionText: 'El hombre llego a la luna?', questionAnswer: true),
    Question(questionText: 'Haz almorzado algo?', questionAnswer: true),
    Question(questionText: 'Sientes frio?', questionAnswer: false),
    Question(questionText: 'Vas a salir mañana?', questionAnswer: true),
  ];

  int _questionNumber = 0;

  getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  // Verificar si el quiz a terminado

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    }
    return false;
  }

  // Reiniciar el quiz

  void restart() {
    _questionNumber = 0;
  }
}
