import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Customgredient(Color.fromARGB(255, 0, 5, 28), Colors.blue),
      ),
    ),
  );
}
