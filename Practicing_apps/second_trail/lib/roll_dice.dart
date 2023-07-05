import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class Rolldice extends StatefulWidget {
  const Rolldice({super.key});
  @override
  State<Rolldice> createState() {
    return _RolldiceState();
  }
}

class _RolldiceState extends State<Rolldice> {
  var currentDiceRoll = 2;
  void rolldice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-images/dice-$currentDiceRoll.png', width: 300),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue[100],
            textStyle: const TextStyle(fontSize: 34),
          ),
          child: const Text('RollDice'),
        ),
      ],
    );
  }
}
