import 'package:flutter/material.dart';

class StylishText extends StatelessWidget {
  const StylishText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello World!',
      style: TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
