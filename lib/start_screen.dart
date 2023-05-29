import 'dart:ffi';

import 'package:flutter/material.dart';

//local files
import './my_image.dart';
import './styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const MyImage(
            imagePath: 'assets/images/quiz-logo.png',
            imageColor: Color.fromARGB(155, 252, 252, 252),
          ),
          const SizedBox(
            height: 80,
          ),
          const StyledText(data: 'Learn Flutter the fun way!'),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 244, 218, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
