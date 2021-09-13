import 'question.dart';
import 'dart:core';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'В Китае есть специальные дорожки для пользователей мобильных телефонов',
        true),
    Question('В Китае лечат от интернет зависимости в больницах', false),
    Question('Китай самая курящая страна в мире', true),
    Question(
        'Смертная казнь применяется в Китае больше, чем в любой другой стране мира ',
        true),
    Question('Китай мировой лидер по загрязнению воздуха', true),
    Question(
        'Многие дети в Китае содержат тараканов в качестве домашних питомцев',
        false),
    Question('Все китайцы умеют хорошо петь', false),
    Question(
        'В Китае одновренменно действует левосторонее и правосторонее движение',
        true),
    Question('Рестораны Китая никогда не закрываются', false),
    Question('Китайцы почти не пьют молоко и не едят творог', true),
    Question('Китай не продает панд, а сдает в аренду', true),
    Question('Цвет траура в Китае не черный, а белый', true),
    Question('Несчастливое число в Китае -4, а счастливое 8', true),
    Question('70% китайцев  безграмотные', false),
    Question('50% китайцев  никогда не берут отпуск', true),
    Question('30млн китайцев живут в пещерных домах', true),
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
    if (_questionNumber >= _questionBank.length - 1) {
      // print('finished');

      return true;
    } else {
      // print('not finished');
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
