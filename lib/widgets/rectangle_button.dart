import 'package:flutter/material.dart';
import 'package:fitness_health_calculator/utils/utils.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton({super.key, required this.onTap, required this.title});
  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: kCalCulateButtonBoxDecoration,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              title,
              style: kButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
