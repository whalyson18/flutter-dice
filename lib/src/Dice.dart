// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dice extends StatefulWidget {
  Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice01 = 6;
  int dice02 = 6;

  void RollDice() {
    setState(() {
      dice01 = Random().nextInt(6) + 1;
      dice02 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: RollDice,
                child: Image.asset('images/$dice01.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: RollDice,
                child: Image.asset('images/$dice02.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
