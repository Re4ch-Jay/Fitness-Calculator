import 'dart:math';
import 'calculator.dart';

class BMICalculator extends Calculator {
  BMICalculator({
    required super.height,
    required super.weight,
  });

  double getBMIResult() {
    return weight / pow((height / 100), 2);
  }

  String getInterpretation() {
    if (getBMIResult() >= 25) {
      return 'You have a higher than normal weight. Try excercise more.🏋️';
    } else if (getBMIResult() > 18.5) {
      return 'You are fit and healthy. Well Done!💜';
    } else {
      return 'You have a lower weight. Try to eat more.🍠';
    }
  }
}
