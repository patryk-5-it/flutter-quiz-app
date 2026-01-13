import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png'),
            SizedBox(height: 50),
            Text(
              "Learn Flutter the fun way!",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(height: 50),
            TextButton(onPressed: () {}, child: Text("Start quiz!", style:TextStyle(color:Colors.white, fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
