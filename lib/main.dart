import 'package:course/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext) {
    return MaterialApp(

      home: MyHomePage(),

    );
  }
}





// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   var questionIndexNo = 0;
//
//   void answerQuestion() {
//     questionIndexNo = questionIndexNo + 1;
//   }
//
//   var questions = [
//     'What\'s your Name',
//     'What\'s your Profession',
//     'What\'s your qualification',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("My First App"),
//         ),
//         body: Column(
//           children: [
//             ElevatedButton(
//               child: Text(questions[questionIndexNo]),
//               onPressed: answerQuestion,
//             ),
//             ElevatedButton(
//                 child: Text("Answer no 2"), onPressed: answerQuestion),
//             ElevatedButton(
//                 child: Text("Answer no 3"), onPressed: answerQuestion),
//           ],
//         ),
//       ),
//     );
//   }
// }
