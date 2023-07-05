import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/resultScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? test;
  List<String> selectedAnswers = [];
  var activeScreen = "StartScreen";
  void switchScreen() {
    setState(() {
      activeScreen = "QuestionsScreen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'ResultScreen';
      });
    }
  }

  @override
  Widget build(context) {
    if (activeScreen == "StartScreen") {
      test = StartScreen(switchScreen);
    } else if (activeScreen == "QuestionsScreen") {
      test = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else if (activeScreen == 'ResultScreen') {
      test = ResultScreen(chosenAnswers: selectedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: test,
        ),
      ),
    );
  }
}
