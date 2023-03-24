import 'package:fitness_health_calculator/utils/utils.dart';
import 'package:fitness_health_calculator/widgets/re_calculate_button.dart';
import 'package:flutter/material.dart';

class HealthyWeightResult extends StatelessWidget {
  const HealthyWeightResult({
    super.key,
    required this.healthyWeightResult,
  });
  final String healthyWeightResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy Weight'),
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
                        healthyWeightResult,
                        style: kNumberTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'Kgs',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'is the good weight to aim',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color: Colors.grey,
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
