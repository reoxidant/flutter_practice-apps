import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My card',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatar.jpeg'),
              ),
              Text('Vitaliy Shapovalov',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text('flutter developer'.toUpperCase(),
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.blueGrey.shade100,
                        fontSize: 20,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                width: 150.0,
                height: 20.0,
                child: Divider(
                  color: Colors.blueGrey.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_iphone,
                    color: Colors.blueGrey.shade900,
                    size: 30.0,
                  ),
                  title: Text(
                      '+7 (983) 625-39-92',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 2.5,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey.shade900
                      )
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                      color: Colors.blueGrey.shade900,
                      size: 30.0
                  ),
                  title: Text(
                      'kupper133@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.5,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey.shade900
                      )
                  ),
                )
              )
            ],
          ),
        )),
      ),
    );
  }
}
