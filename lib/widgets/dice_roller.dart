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
      debugPrint(currentDiceRollNumber.toString());
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
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll This Dice!'),
        ),
      ],
    );
  }
}
