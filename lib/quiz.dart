import 'package:flutter/material.dart';

//local files
import './start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  static const Color color1 = Color.fromARGB(255, 25, 4, 39);
  static const Color color2 = Color.fromARGB(255, 41, 7, 68);

  List<String> _selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswer.add(answer);

    if (_selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
        // selectedAnswer = [];
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
      _selectedAnswer = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: _selectedAnswer,
        restartQuiz: _restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
