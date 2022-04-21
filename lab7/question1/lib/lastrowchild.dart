import 'package:flutter/material.dart';
import 'constants.dart';

class lastrowchild extends StatefulWidget {
  dynamic? number;
  dynamic? text;
  lastrowchild({required this.text, required this.number});
  @override
  State<lastrowchild> createState() => _lastrowchildState();
}

class _lastrowchildState extends State<lastrowchild> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text.toString(),
          style: kLabelTextStyle,
        ),
        Text(
          widget.number.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RawMaterialButton(
              child: Icon(Icons.remove),
              constraints: BoxConstraints.tightFor(
                width: 56.0,
                height: 56.0,
              ),
              elevation: 6.0,
              shape: CircleBorder(),
              fillColor: Color(0xFF4C4F5E),
              onPressed: () {
                setState(() {
                  widget.number--;
                });
              },
            ),
            SizedBox(
              width: 10,
            ),
            RawMaterialButton(
              child: Icon(Icons.add),
              constraints: BoxConstraints.tightFor(
                width: 56.0,
                height: 56.0,
              ),
              elevation: 6.0,
              shape: CircleBorder(),
              fillColor: Color(0xFF4C4F5E),
              onPressed: () {
                setState(() {
                  widget.number++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
