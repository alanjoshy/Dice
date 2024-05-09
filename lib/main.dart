import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee by alan'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceChange() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void resetDice() {
    setState(() {
      rightDiceNumber = 1;
      leftDiceNumber = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // ignore: deprecated_member_use


            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                changeDiceChange();
                print('leftDiceNumber = $leftDiceNumber');
              },
              onLongPress: () {
                resetDice();
                print('long pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),

          
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                changeDiceChange();

                print('rightDiceNumber = $rightDiceNumber');
              },
              onLongPress: () {
                resetDice();
                print('long pressed');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  random() {}
}
