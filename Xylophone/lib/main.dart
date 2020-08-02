import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophonePage());
}

class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int noteNumber) {
      final player = AudioCache();
      player.play('note$noteNumber.wav');
    }

    Expanded buttonXylophone({Color color, int soundNumber}) {
      return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {
              playSound(soundNumber);
            }, child: null,),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Xylophone Application')),
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buttonXylophone(color: Colors.green, soundNumber:1),
            buttonXylophone(color: Colors.purple, soundNumber:2),
            buttonXylophone(color: Colors.pink, soundNumber:3),
            buttonXylophone(color: Colors.red, soundNumber:4),
            buttonXylophone(color: Colors.yellow, soundNumber:5),
            buttonXylophone(color: Colors.blue, soundNumber:6),
            buttonXylophone(color: Colors.orange, soundNumber:7)
          ],
        ),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
