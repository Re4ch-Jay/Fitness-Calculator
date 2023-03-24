import 'package:fitness_health_calculator/calculators/calculator.dart';

class HealthyWeightCalculator extends Calculator {
  HealthyWeightCalculator({required super.height});

  String getHealthyWeightResult() {
    if (height! >= 147 && height! < 157) {
      return '45-59';
    } else if (height! >= 157 && height! < 165) {
      return '54-68';
    } else if (height! >= 165 && height! < 175) {
      return '63-77';
    } else if (height! >= 175 && height! < 183) {
      return '72-86';
    } else {
      return '81-95';
    }
  }
}
