import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

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
          Text(
            "Quiz wiedzy o Flutter",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 50),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: Text(
              "Rozpocznij quiz",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
