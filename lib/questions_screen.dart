import 'package:adv_basics_app/data/questions.dart';
import 'package:flutter/material.dart';

import 'package:adv_basics_app/answer_button.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer,});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer)
  {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style:GoogleFonts.lato(
                color:Color.fromARGB(255, 240, 233, 247),
                fontSize:24,
                fontWeight:FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
        
            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(answerText: item, onTap: () {
                answerQuestion(item);
              });
            })
          ],
        ),
      ),
    );
  }
}
