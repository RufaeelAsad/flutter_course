import 'package:flutter/material.dart';
import 'package:course/QuestionWidget.dart';
class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var questions = [
    'What is your Favourite Color',
    'What is your Favourite Animal'
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 3"),
            ),
          ],
        ));
  }
}
