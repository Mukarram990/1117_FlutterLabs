import 'package:flutter/material.dart';
import 'package:question1/firstrowchild.dart';
import 'constants.dart';
import 'containerwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator.dart';


class Result extends StatelessWidget {
  int weight;
  int height;
  int age;
  Result({required this.weight, required this.height, required this.age});

  String BMI() {
    Calculator calc = Calculator(height: height, weight: weight);
    return calc.calculateBMI();
  }
  String GetResult(){
    Calculator calc = Calculator(height: height, weight: weight);
    return calc.getResult();
  }
  String Interpretation(){
    Calculator calc = Calculator(height: height, weight: weight);
    return calc.getInterpretation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    BMI(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    GetResult(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    Interpretation(),
                    textAlign: TextAlign.center,
                    style: kResultBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: kBottomContainerHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
