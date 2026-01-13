import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(175, 255, 255, 255),
          ),
          SizedBox(height: 50),
          const Text(
            "Quiz wiedzy o Flutter",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 231, 255),
              fontSize: 24,
            ),
          ),
          SizedBox(height: 50),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Rozpocznij quiz",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
