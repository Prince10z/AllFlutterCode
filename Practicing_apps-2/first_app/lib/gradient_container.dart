import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class Customgredient extends StatelessWidget {
  const Customgredient(this.color1, this.color2, {super.key});
  // const Customgredient.purple({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo;
  final Color color1;
  final Color color2;
  static Alignment customstart = Alignment.topLeft;
  static Alignment customend = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: customstart,
          end: customend,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
