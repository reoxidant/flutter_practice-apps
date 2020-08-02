import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roll The Dice',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Roll The Dice'),
        ),
        body: RunApp(),
      ),
    );
  }
}

class RunApp extends StatefulWidget {
  @override
  _RunAppState createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  int valueOfLeftDice = 1;
  int valueOfRightDice = 1;
  @override
  Widget build(BuildContext context) {

    void getRandomValueOfDice(){
      setState(() {
        valueOfLeftDice = Random().nextInt(6) + 1;
        valueOfRightDice = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                  getRandomValueOfDice();
              },
              child: Image.asset('images/dice$valueOfLeftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                  getRandomValueOfDice();
              },
              child: Image.asset('images/dice$valueOfRightDice.png'),
            ),
          )
        ],
      ),
    );
  }
}
