// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'src/Dice.dart';

void main() => runApp(ThisApp());

class ThisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dados virtuais'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    );
  }
}
