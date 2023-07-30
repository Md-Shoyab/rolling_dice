import 'package:flutter/material.dart';

const gradientBeginPosition = Alignment.topLeft;
const gradientEndPosition = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> gradientColorsList;
  const GradientContainer({
    super.key,
    required this.gradientColorsList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: gradientBeginPosition,
          end: gradientEndPosition,
          colors: gradientColorsList,
        ),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/images/dice_2.png',
            width: 150,
          ),
        ),
      ),
    );
  }
}
