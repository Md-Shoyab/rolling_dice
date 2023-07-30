import 'package:flutter/material.dart';
import 'package:rolling_dice/widgets/stylish_text.dart';

const gradientBeginPosition = Alignment.topLeft;
const gradientEndPosition = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: gradientBeginPosition,
          end: gradientEndPosition,
          colors: [
            Color(0xff8937FF),
            Color(0xffE85BFF),
          ],
        ),
      ),
      child: const Center(
        child: StylishText(),
      ),
    );
  }
}
