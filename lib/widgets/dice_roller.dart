import 'package:flutter/material.dart';
import 'dart:math';

final randomizerOfNumber = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRollNumber = 2;

  void rollDice() {
    setState(() {
      currentDiceRollNumber = randomizerOfNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/images/dice_$currentDiceRollNumber.png',
            width: 150,
          ),
        ),
        const SizedBox(height: 50),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            foregroundColor: const Color(0xff8937FF),
            backgroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          child: const Text('Roll This Dice!'),
        ),
      ],
    );
  }
}
