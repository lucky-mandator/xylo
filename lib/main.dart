import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void changeSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int buttonNumber, Color color) =>
    Expanded(
        child: TextButton(
      onPressed: () {
        changeSound(buttonNumber);
      },
      style: TextButton.styleFrom(
          backgroundColor: color),
    ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.blue),
                buildKey(2, Colors.red),
                buildKey(3, Colors.blueGrey),
                buildKey(4, Colors.green),
                buildKey(5, Colors.lightGreenAccent)
              ]),
        ),
      ),
    ));
  }
}
