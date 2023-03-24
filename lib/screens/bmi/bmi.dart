import 'package:fitness_health_calculator/screens/bmi/bmi_result.dart';
import 'package:fitness_health_calculator/utils/utils.dart';
import 'package:fitness_health_calculator/calculators/bmi_calculator.dart';
import 'package:fitness_health_calculator/widgets/calculate_button.dart';
import 'package:fitness_health_calculator/widgets/decrement_button.dart';
import 'package:fitness_health_calculator/widgets/increment_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double weight = 65;
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Calculator'),
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
                        'Weight',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toStringAsFixed(0),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DecrementButton(
                            onTap: _decrementWeight,
                            iconSize: 60,
                            radius: 40,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          IncrementButton(
                            onTap: _incrementWeight,
                            iconSize: 60,
                            radius: 40,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        height.toStringAsFixed(1),
                        style: kNumberTextStyle,
                      ),
                      Slider(
                        value: height,
                        min: 120,
                        max: 220,
                        onChanged: _onChangedHeight,
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
                  BMICalculator bmiCalculator = BMICalculator(
                    weight: weight,
                    height: height,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIResult(
                        bmiResult: bmiCalculator.getBMIResult(),
                        interpretation: bmiCalculator.getInterpretation(),
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

  void _onChangedHeight(value) => setState(() {
        height = value;
      });

  void _decrementWeight() => setState(() {
        weight--;
      });

  void _incrementWeight() => setState(() {
        weight++;
      });
}
