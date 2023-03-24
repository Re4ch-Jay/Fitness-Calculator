import 'package:flutter/material.dart';

import 'calculator.dart';
import 'package:fitness_health_calculator/utils/constants.dart';

class BMRCalculator extends Calculator {
  final int age;
  final String gender;
  BMRCalculator({
    required super.height,
    required super.weight,
    required this.age,
    required this.gender,
  });

  double getBMRResult() {
    if (gender == MALE) {
      return (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else {
      return (10 * weight) + (6.25 * height) - (5 * age) - 16;
    }
  }

  IconData getGenderIcon() {
    if (gender == MALE) {
      return Icons.male;
    } else {
      return Icons.female;
    }
  }
}
