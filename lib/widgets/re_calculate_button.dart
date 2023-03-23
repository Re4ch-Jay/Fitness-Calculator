import 'package:flutter/material.dart';
import 'package:fitness_health_calculator/utils/utils.dart';

class ReCalculateButton extends StatelessWidget {
  const ReCalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        decoration: kCalCulateButtonBoxDecoration,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'RE-CALCULATE',
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
