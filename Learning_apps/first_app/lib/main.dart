import 'package:flutter/material.dart';
import 'package:first_app/costum_text.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: CustomText(Colors.deepOrange, Colors.yellow),
      ),
    ),
  );
}
