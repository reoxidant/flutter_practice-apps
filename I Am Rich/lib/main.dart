import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("I am Rich"),
        backgroundColor: Colors.blueGrey[500],
      ),
      body: Center(
        child: Image(
          image: AssetImage(
            'images/diamond-2.png',
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    ));
  }
}
