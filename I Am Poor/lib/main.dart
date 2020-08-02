import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'I am poor',
          home: Scaffold(
            appBar: AppBar(
              title: const Text('I am Poor', style: TextStyle(color:Colors.black)),
              backgroundColor: Color(0xFF9e9e9e),
            ),
            body: Center(
                child: Image(
                    image: AssetImage('assets/images/coal.png')
                )
            ),
          )
      );
    }
}
