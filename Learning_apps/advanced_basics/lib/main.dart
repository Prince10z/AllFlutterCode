import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Learn Flutter the fun way!',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  height: 40,
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  icon: const Icon(Icons.start),
                  label: const Text("Start Quiz"),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
