import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentquestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentquestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answertext: 'Answer text...', onTap: () {}),
          const SizedBox(
            height: 10,
          ),
          AnswerButton(answertext: 'Answer text...', onTap: () {}),
          const SizedBox(
            height: 10,
          ),
          AnswerButton(answertext: 'Answer text...', onTap: () {}),
          const SizedBox(
            height: 10,
          ),
          AnswerButton(answertext: 'Answer text...', onTap: () {}),
        ],
      ),
    );
  }
}
