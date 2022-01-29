import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Text ('MONOAR HOSSAIN'),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30) ,bottomRight: Radius.circular(30) ),
            side: BorderSide(
                width: 5,
                color: Colors.black38
            ),
          ),
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftdice_no = 1;
  int rightdice_no = 6;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      leftdice_no = Random().nextInt(6) + 1;
      rightdice_no = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  child: Image.asset('images/dice$leftdice_no.png'),
                  onPressed: () {
                    update();
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  child: Image.asset('images/dice$rightdice_no.png'),
                  onPressed: () {
                    update();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
