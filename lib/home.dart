import 'package:course/answer.dart';
import 'package:flutter/material.dart';
import 'package:course/QuestionWidget.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _questionIndex = 0;

  static const questions = [
    {
      'questionText': 'What\s your Favourite Color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\s your Favourite Animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\s your Favourite Instructor?',
      'answers': ['Sir Bilal', 'Mam Sana', 'Mam Sadaf', 'Sir Faheem'],
    },
  ];

  void _answerQuestion() {

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < questions.length) {
      print("You have more questions");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Question(questions[_questionIndex]['questionText'] as String),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          ),
        ));
  }
}

