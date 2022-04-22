import 'package:flutter/material.dart';
import 'package:question1/firstrowchild.dart';
import 'package:question1/result.dart';
import 'constants.dart';
import 'containerwidget.dart';

enum Gender {
  Male,
  Female,
}
void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: kbodyColor,
      appBarTheme: AppBarTheme(backgroundColor: kbodyColor),
      scaffoldBackgroundColor: kbodyColor,
    ),
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectedGender;
  int height = 180;
  double minHeight = 120;
  double maxHeight = 220;

  int weight = 60;
  int age = 28;
  void CalulateResult() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Result(
                  height: height,
                  weight: weight,
                  age: age,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
          style: kMainPageTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    color: selectedGender == Gender.Male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: firstrowchild(icon: Icons.male, text: "Male"),
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    color: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: firstrowchild(icon: Icons.female, text: "Female"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerWidget(
              color: kInactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: minHeight,
                        max: maxHeight,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ContainerWidget(
                color: kInactiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Weight",
                      style: kLabelTextStyle,
                    ),
                    Text(
                      weight.toString(),
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
                              weight -= 1;
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
                              weight += 1;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: ContainerWidget(
                color: kInactiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Age",
                      style: kLabelTextStyle,
                    ),
                    Text(
                      age.toString(),
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
                              age -= 1;
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
                              age += 1;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),
          GestureDetector(
            onTap: CalulateResult,
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: kBottomContainerHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Calculate",
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
