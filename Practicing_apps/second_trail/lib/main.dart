import 'package:flutter/material.dart';
import 'package:second_trail/custom_text.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Customtext(
            Color.fromARGB(255, 1, 1, 14), Color.fromARGB(255, 28, 114, 241)),
      ),
    ),
  );
}
