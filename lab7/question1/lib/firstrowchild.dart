import 'package:flutter/material.dart';
import 'constants.dart';

class firstrowchild extends StatelessWidget {
  dynamic? icon;
  dynamic? text;
  firstrowchild({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
