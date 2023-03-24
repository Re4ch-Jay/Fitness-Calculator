import 'package:fitness_health_calculator/calculators/calculator.dart';
import 'package:fitness_health_calculator/utils/constants.dart';
import 'package:flutter/material.dart';

class IDWCalculator extends Calculator {
  final String gender;
  IDWCalculator({
    required super.height,
    required this.gender,
  });

  double getIDWResult() {
    return gender == MALE
        ? height! - 100 - ((height! - 150) / 4)
        : height! - 100 - ((height! - 150) / 2);
  }
}
