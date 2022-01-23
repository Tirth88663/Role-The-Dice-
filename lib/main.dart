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

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('im left button.');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('im right button');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
