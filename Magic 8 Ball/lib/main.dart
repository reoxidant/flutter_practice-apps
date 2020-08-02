import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicBallPage());
}

class MagicBallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body:MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget{
  createState() => new MagicBallState();
}

class MagicBallState extends State<MagicBall>{
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png')
      ),
    );
  }
}



