// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Piano());
}

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);
  Container play(int num, Color Color) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            child: FlatButton(
          onPressed: () {
            AudioCache player = AudioCache();
            player.play("note$num.wav");
          },
          child: Text(""),
          color: Color,
        ))
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: play(1, Colors.yellow),
            ),
            Expanded(
              child: play(2, Colors.black),
            ),
            Expanded(
              child: play(3, Colors.purple),
            ),
            Expanded(
              child: play(4, Colors.blue),
            ),
            Expanded(
              child: play(5, Colors.orange),
            ),
            Expanded(
              child: play(6, Colors.red),
            ),
            Expanded(
              child: play(7, Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
