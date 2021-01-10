import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomButtonNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          child: Center(
            child: FlatButton(
              child: Image.asset('images/ball$randomButtonNumber.png'),
              onPressed: () {
                setState(() {
                  randomButtonNumber = getRandom();
                });
                print('button is pressed');
              },
            ),
          ),
        ),
      ),
    );
  }

  int getRandom() {
    Random rand;
    return Random().nextInt(5) + 1;
  }
}
