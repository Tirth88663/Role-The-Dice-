import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text("Role The Dice", style: TextStyle(color: Colors.white)),
        ),
        body: MainPage(),
      ),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int ldnum = 1;
  int rdnum = 1;
  void roll_dice() {
    setState(() {
      ldnum = Random().nextInt(6) + 1;
      rdnum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  roll_dice();
                },
                child: Image.asset('images/dice$ldnum.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    roll_dice();
                  });
                },
                child: Image.asset('images/dice$rdnum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
