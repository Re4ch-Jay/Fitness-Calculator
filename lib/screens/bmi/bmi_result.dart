import 'package:fitness_health_calculator/utils/utils.dart';
import 'package:fitness_health_calculator/widgets/re_calculate_button.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  const BMIResult(
      {super.key, required this.bmiResult, required this.interpretation});
  final double bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Calculator'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Result',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        bmiResult.toStringAsFixed(1),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        interpretation,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const ReCalculateButton()
            ],
          ),
        ),
      ),
    );
  }
}
