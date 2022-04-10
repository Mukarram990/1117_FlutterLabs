// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'QuestionBank.dart';
import 'Question.dart';

void main() {
  runApp(const QuizApp());
  WidgetsApp.debugAllowBannerOverride = false;
  WidgetsApp.debugShowWidgetInspectorOverride = false;
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  QuestionBank Question = QuestionBank();
  List<Widget> Score = [];

  void compareAnswer(bool answer) {
    bool corretAnswer = Question.CorrectAnswer();
    if (Question.isFinished() == true) {
      Question.reset();
      Score = [];
    } else {
      if (corretAnswer == answer) {
        Score.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        Score.add(
          Icon(Icons.close, color: Colors.red),
        );
      }
      setState(() {
        Question.nextQuestions();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            Question.GetQuestions(),
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
          ),
          SizedBox(
            height: 100,
          ),
          FlatButton(
            onPressed: () {
              compareAnswer(true);
            },
            child: Text(
              "True",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
            height: 60,
            minWidth: 400,
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: () {
              compareAnswer(false);
            },
            child: Text(
              "False",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.redAccent,
            height: 60,
            minWidth: 400,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: Score,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      )),
    ));
  }
}
