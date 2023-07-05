import 'package:flutter/material.dart';
import 'package:second_trail/roll_dice.dart';

class Customtext extends StatelessWidget {
  const Customtext(this.color1, this.color2, {super.key});
  static Alignment startpoint = Alignment.topLeft;
  static Alignment endpoint = Alignment.bottomRight;
  final Color color1;
  final Color color2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Rolldice(),
      ),
    );
  }
}
