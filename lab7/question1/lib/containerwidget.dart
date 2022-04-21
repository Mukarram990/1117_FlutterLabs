import 'package:flutter/material.dart';
import 'constants.dart';

class ContainerWidget extends StatelessWidget {
  dynamic? child;
  dynamic? color;
  dynamic? onpress;
  ContainerWidget({required this.child, this.color,this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
