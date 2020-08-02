import 'question.dart';

class Engine {

  int _questionNumber = 0;

  List<Question> _listQuestions = [
    Question(questionText: 'Москва столица россии?', answer: true),
    Question(questionText: 'Америка выпускает телефоны компании Айфон?', answer: false),
    Question(questionText: 'Снег состоит из воды?', answer: false),
    Question(questionText: 'Соль бывает сладкой?', answer: true),
    Question(questionText: 'В руке 5 костей?', answer: false),
    Question(questionText: 'Колумб открыл Африку?', answer: false),
    Question(questionText: 'Индия имеет самое многочисленное население в мире?', answer: false),
    Question(questionText: 'Шелкоплопряд бабочка?', answer: false),
    Question(questionText: 'Лен из шести животных?', answer: false),
    Question(questionText: 'Мозг человека весит 1 кг?', answer: true),
    Question(questionText: 'Евразия самый большой континент?', answer: true),
    Question(questionText: 'Алиса и Сири - подруги?', answer: false),
    Question(questionText: 'Глагол это часть речи?', answer: true),
    Question(questionText: 'Ежи едят яблоки?', answer: false),
    Question(questionText: 'Наркомания это болезнь?', answer: true),
    Question(questionText: 'В мире 6 океанов?', answer: false),
    Question(questionText: 'Красная площадь находится в китае?', answer: false),
    Question(questionText: 'Юпитер самая дальняя планета в нашей системе?', answer: false),
    Question(questionText:  'В 1995 году появилась Россия?', answer: false),
    Question(questionText:  'Россия выйграла Вторую мировую войну?', answer: false)
  ];

  void nextQuestion(){
    if(_questionNumber < _listQuestions.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _listQuestions[_questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _listQuestions[_questionNumber].answer;
  }

  bool isFinished(){
    if(_questionNumber == _listQuestions.length - 1){
      print('It is finished!');
      return true;
    }else{
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}