import 'package:flutter/material.dart';
import 'package:practicetest/answer_botton.dart';
import 'package:practicetest/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen(this.questiontest, {super.key});
  void Function() questiontest;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuesionIndex = 0;
  void answerQuesion() {
    setState(() {
      if (currentQuesionIndex < 6) {
        currentQuesionIndex++;
      }
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuesionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 80,
            ),
            ...currentQuestion.shuffeledList().map((answers) {
              return AnswerButton(name: answers, property: answerQuesion);
            }),
            OutlinedButton.icon(
              onPressed: widget.questiontest,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.home),
              label: const Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
