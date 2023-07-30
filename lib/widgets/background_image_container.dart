import 'package:flutter/material.dart';

class BackGroundImageContainer extends StatelessWidget {
  const BackGroundImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/dice_app_background.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
