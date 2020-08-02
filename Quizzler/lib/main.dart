import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'engine.dart';

Engine quizzlerEngine = Engine();

void main() {
  runApp(QuizzlerPage());
}

class QuizzlerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Quizzler(),
          ),
        ),
      ),
    );
  }
}

class Quizzler extends StatefulWidget {
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {

  List<Icon> quizzleIcons =[];

  void checkAnswer(bool answerIsTrue){
    bool correctAnswer = quizzlerEngine.getQuestionAnswer();

    setState(() {
      if(quizzlerEngine.isFinished()){
        Alert(
          context: context,
          title: "Тест окончен!",
          desc: "Тестирование начнется заново!",
          buttons: [
            DialogButton(
              child: Text(
                "Завершить",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();

        quizzlerEngine.reset();
        quizzleIcons.clear();
      }else{
        quizzleIcons.add(
            Icon(
              (answerIsTrue == correctAnswer)? Icons.check : Icons.block,
              color: (answerIsTrue == correctAnswer)? Colors.green : Colors.red,
              size: 30.0,
            )
        );
        quizzlerEngine.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Center(
              child: Text(
                quizzlerEngine.getQuestionText(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                checkAnswer(true);
              },
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                checkAnswer(false);
              },
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          children: quizzleIcons
        )
      ],
    );
  }
}