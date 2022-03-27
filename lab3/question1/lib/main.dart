import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                ),
                padding: EdgeInsets.all(20),
              ),
              Container(
                child: Text(
                  "Mukarram Shahbaz",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Zenkurenaido",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              ),
              Container(
                child: Text(
                  "Software Engineer",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lato",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20, 5, 20, 15),
              ),
              Container(
                child: Card(
                  child: Column(children: [
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 45,
                      ),
                      title: Text(
                        "+92 302 0672762",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ]),
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
              ),
              Container(
                child: Card(
                  child: Column(children: [
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 45,
                      ),
                      title: Text(
                        "mukarramshahbaz8@gmail.com",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ]),
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              ),
            ],
          ),
        ));
  }
}
