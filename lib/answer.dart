import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final void Function()? selectIndiaction;

  final String? answerText;

  Answer(this.selectIndiaction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText!),
        onPressed: selectIndiaction,
      ),
    );


  }
}