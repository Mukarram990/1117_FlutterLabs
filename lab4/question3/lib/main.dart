import 'package:flutter/material.dart';

void main() {
  runApp(const lab4question3());
}

class lab4question3 extends StatefulWidget {
  const lab4question3({Key? key}) : super(key: key);

  @override
  State<lab4question3> createState() => _lab4question3State();
}

class _lab4question3State extends State<lab4question3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: (() {}),
                  child: Text(
                    "Enabled",
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(30, 40),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Enabled",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.volume_up),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
