import 'package:flutter/material.dart';
import 'package:fitness_health_calculator/utils/utils.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: kCalCulateButtonBoxDecoration,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'CALCULATE',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
