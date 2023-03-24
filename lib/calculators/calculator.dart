import 'package:flutter/material.dart';
import 'package:fitness_health_calculator/utils/constants.dart';

class Calculator {
  late double? height;
  late double? weight;
  late String? gender;
  Calculator({
    this.height,
    this.weight,
    this.gender,
  });

  IconData getGenderIcon() {
    return gender == MALE ? Icons.male : Icons.female;
  }
}
