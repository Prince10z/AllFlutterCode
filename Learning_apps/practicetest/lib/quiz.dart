import 'package:flutter/material.dart';
import 'package:practicetest/start_screen.dart';
import 'package:practicetest/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? test;
  var currentScreen = "StartScreen";
  void switchScreen() {
    setState(() {
      currentScreen = "QuestionScreen";
    });
  }

  void gotohome() {
    setState(() {
      currentScreen = "StartScreen";
    });
  }

  @override
  Widget build(context) {
    if (currentScreen == "StartScreen") {
      test = StartScreen(switchScreen);
    } else if (currentScreen == "QuestionScreen") {
      test = QuestionsScreen(gotohome);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.blue],
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
