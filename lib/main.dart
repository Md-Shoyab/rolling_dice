import 'package:flutter/material.dart';
import 'package:rolling_dice/widgets/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          gradientColorsList: [
            Color(0xff8937FF),
            Color(0xffE85BFF),
          ],
        ),
      ),
    ),
  );
}
