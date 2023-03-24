import 'package:fitness_health_calculator/calculators/healthy_weight_calculator.dart';
import 'package:fitness_health_calculator/screens/healthy_weight/healthy_weight_result.dart';
import 'package:fitness_health_calculator/utils/utils.dart';
import 'package:fitness_health_calculator/widgets/calculate_button.dart';
import 'package:flutter/material.dart';

class HealthyWeight extends StatefulWidget {
  const HealthyWeight({super.key});

  @override
  State<HealthyWeight> createState() => _HealthyWeightState();
}

class _HealthyWeightState extends State<HealthyWeight> {
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy Weight'),
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
                        'Height',
                        style: kMeduimLabelTextStyle,
                      ),
                      Text(
                        height.toStringAsFixed(1),
                        style: kMeduimNumberTextStyle,
                      ),
                      Slider(
                        value: height,
                        min: 147,
                        max: 220,
                        onChanged: _handleChangeHeight,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CalculateButton(
                onTap: () {
                  HealthyWeightCalculator healthyWeightCalculator =
                      HealthyWeightCalculator(
                    height: height,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HealthyWeightResult(
                        healthyWeightResult:
                            healthyWeightCalculator.getHealthyWeightResult(),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _handleChangeHeight(value) => setState(() {
        height = value;
      });
}
