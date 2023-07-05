import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext(this.customtext, {super.key});
  final String customtext;
  @override
  Widget build(context) {
    return Center(
      child: Text(
        customtext,
        style: const TextStyle(color: Colors.white, fontSize: 60),
      ),
    );
  }
}
