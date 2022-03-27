import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(193, 223, 159, 100),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 197, 16, 3),
          title: Text("I am Rick"),
        ),
        body: Center(
          child: Image.asset("assets/images/rick.jpg"),
        ),
      ),
    ),
  );
}
