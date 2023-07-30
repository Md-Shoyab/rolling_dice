import 'package:flutter/material.dart';
import 'package:rolling_dice/widgets/stylish_text.dart';

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
      child: const Center(
        child: StylishText(
          textValue: 'Hello World!',
        ),
      ),
    );
  }
}


