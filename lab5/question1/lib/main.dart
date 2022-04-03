// ignore_for_file: deprecated_member_use

import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 14, 100, 170),
            title: const Text("Ask Me Anything"),
          ),
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                    onPressed: () {
                      int a = Random().nextInt(5);
                      print(a);
                    },
                    child: Image.asset("assets/images/ball1.png"),
                  ))
                ],
              ),
            ),
          )),
    );
  }
}
