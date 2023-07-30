import 'package:flutter/material.dart';
import 'package:rolling_dice/widgets/background_image_container.dart';
import 'package:rolling_dice/widgets/container_with_ui.dart';
import 'package:rolling_dice/widgets/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            const BackGroundImageContainer(),
            GradientContainerWithHalfOpacity(
              gradientColors: [
                const Color(0xff8937FF).withOpacity(0.8),
                const Color(0xffE85BFF).withOpacity(0.8),
              ],
            ),
            const SizedBoxWithUi(),
          ],
        ),
      ),
    ),
  );
}
