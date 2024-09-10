import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {

    int leftDiceNumber = 5;
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
            onPressed: (){
              print('Left button got pressed.');
      },
            child: Image.asset('images/dice$leftDiceNumber.png'),
            ),// FlatButton
            ), // Padding
          ),
          Expanded(
      child: FlatButton(
      onPressed: (){
        print('Right button got pressed')
      },
            child: Image.asset('images/dice1.png'),

          ),// Expanded
        ], // <Widget>[]
      ); //Row
      );// Center
    }
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
      Expanded(
      child: FlatButton(
          onPressed: (){
            changeDiceFace();

    },
      child: Image.asset('images/dice$leftDiceNumber.png'),
    ),// FlatButton
    ), // Padding
    ),
    Expanded(
    child: FlatButton(
    onPressed: (){
    changeDiceFace();
    },
    child: Image.asset('images/dice$rightDiceNumber.png'),

    ),// Expanded
    ], // <Widget>[]
    ); //Row
    );// Center
  }
}
 class DicePage extends StatelessWidget {...}

