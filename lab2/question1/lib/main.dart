import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Mobile App Dev lab"),
        backgroundColor: Colors.brown,
      ),
      body: Center(child: Text("You have pressed the button 0 times.")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        tooltip: "This button is not functional",
      ),
    ),
  ));
}
