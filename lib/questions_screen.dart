import 'package:flutter/material.dart';

import 'package:adv_basics_app/answer_button.dart';

import 'package:adv_basics_app/questions_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("The question...", style:TextStyle(color:Colors.white)),
          SizedBox(height: 30),
          AnswerButton(answerText: "Answer text 1", onTap: () {

          }),
          AnswerButton(answerText: "Answer text 2", onTap: () {

          }),
          AnswerButton(answerText: "Answer text 3", onTap: () {

          }),
        ],
      ),
    );
  }
}
