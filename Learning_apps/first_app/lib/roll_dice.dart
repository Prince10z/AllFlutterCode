import 'package:flutter/material.dart';
import 'dart:math';

final randomnumber = Random();

class Rolldice extends StatefulWidget {
  const Rolldice({super.key});
  @override
  State<Rolldice> createState() {
    return _RolldiceState();
  }
}

class _RolldiceState extends State<Rolldice> {
  var currentstate = 1;
  void rolldice() {
    setState(() {
      currentstate = randomnumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/dice-images/dice-$currentstate.png", width: 300),
        const SizedBox(height: 32),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 71, 38, 1),
            textStyle: const TextStyle(fontSize: 26),
          ),
          child: const Text(
            "Roll Dice",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
