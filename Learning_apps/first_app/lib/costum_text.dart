import 'package:first_app/roll_dice.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  static Alignment startpoint = Alignment.topLeft;
  static Alignment endpoint = Alignment.bottomRight;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startpoint,
          end: endpoint,
        ),
      ),
      child: const Center(
        child: Rolldice(),
      ),
    );
  }
}
