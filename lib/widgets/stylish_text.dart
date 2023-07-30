import 'package:flutter/material.dart';

class StylishText extends StatelessWidget {
  final String textValue;
  const StylishText({
    super.key,
    required this.textValue,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
