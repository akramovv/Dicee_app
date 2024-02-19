import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Dicee'),
      ),
      body:  const DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  _DiceAppState createState() => _DiceAppState();
}
class _DiceAppState extends State<DiceApp> {
  int leftImageNumber=1;
  int rightImageNumber=1;
  void changeDice(){
    setState(() {
      leftImageNumber=Random().nextInt(6)+1;
      rightImageNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
           changeDice();
                print('left button num$leftImageNumber');
              },
              child: Image.asset('assets/images/dice$leftImageNumber.png'),
            ),
          ),
          Expanded(
              child: TextButton(onPressed: () {
               changeDice();
                print('right button num$rightImageNumber');
              },
                  child: Image.asset('assets/images/dice$rightImageNumber.png'))),
        ],
      ),
    );
  }
}
