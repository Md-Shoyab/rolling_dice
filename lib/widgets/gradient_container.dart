import 'package:flutter/material.dart';

var gradientStartAlignment = Alignment.topLeft;
var gradientEndAlignment = Alignment.bottomRight;

class GradientContainerWithHalfOpacity extends StatelessWidget {
  final List<Color> gradientColors;
  const GradientContainerWithHalfOpacity({
    super.key,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: gradientStartAlignment,
          end: gradientEndAlignment,
          colors: gradientColors,
        ),
      ),
    );
  }
}


