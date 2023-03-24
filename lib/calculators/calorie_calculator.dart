import 'package:fitness_health_calculator/calculators/calculator.dart';
import 'package:fitness_health_calculator/utils/constants.dart';
import 'package:flutter/material.dart';

class CalorieCalculator extends Calculator {
  final double bmrResult;
  final String excercise;

  CalorieCalculator({
    required this.bmrResult,
    required this.excercise,
    required super.gender,
  });

  double getCalorieResult() {
    if (excercise == NO_EXCERCISE) {
      return bmrResult * 1.2;
    } else if (excercise == FEWDAYS) {
      return bmrResult * 1.375;
    } else if (excercise == COUPLEDAYS) {
      return bmrResult * 1.55;
    } else {
      // excercise daily
      return bmrResult * 1.9;
    }
  }
}
