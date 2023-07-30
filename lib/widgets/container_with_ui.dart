import 'package:flutter/material.dart';
import 'package:rolling_dice/widgets/dice_roller.dart';

class SizedBoxWithUi extends StatelessWidget {
  const SizedBoxWithUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
