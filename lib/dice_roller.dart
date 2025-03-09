import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var diceimage = 5;

  void rolldice() {
    setState(() {
      diceimage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice$diceimage.png', width: 245),
        const SizedBox(
          height: 10,
          width: 10,
        ),
        TextButton.icon(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                foregroundColor: const Color.fromARGB(238, 28, 25, 1)),
            icon: const Icon(Icons.arrow_circle_left_rounded),
            label: const Text("Roll Dice",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 39)))
      ],
    );
  }
}
