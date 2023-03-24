import 'package:fitness_health_calculator/calculators/bmr_calculator.dart';
import 'package:fitness_health_calculator/screens/bmr/bmr_result.dart';
import 'package:fitness_health_calculator/utils/constants.dart';
import 'package:fitness_health_calculator/utils/utils.dart';
import 'package:fitness_health_calculator/widgets/calculate_button.dart';
import 'package:fitness_health_calculator/widgets/female_card.dart';
import 'package:fitness_health_calculator/widgets/increment_button.dart';
import 'package:fitness_health_calculator/widgets/decrement_button.dart';
import 'package:fitness_health_calculator/widgets/male_card.dart';
import 'package:flutter/material.dart';

class BMR extends StatefulWidget {
  const BMR({super.key});

  @override
  State<BMR> createState() => _BMRState();
}

class _BMRState extends State<BMR> {
  double weight = 65;
  double height = 170;
  int age = 19;
  String gender = MALE;

  @override
  Widget build(BuildContext context) {
    print(gender);
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
                child: Row(
                  children: [
                    Expanded(
                      child: MaleCard(
                        color:
                            gender == MALE ? Colors.deepPurple : Colors.black,
                        onTap: () => setState(() {
                          gender = MALE;
                        }),
                      ),
                    ),
                    Expanded(
                      child: FemaleCard(
                        color:
                            gender == FEMALE ? Colors.deepPurple : Colors.black,
                        onTap: () => setState(() {
                          gender = FEMALE;
                        }),
                      ),
                    ),
                  ],
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
                        style: kMeduimLabelTextStyle,
                      ),
                      Text(
                        height.toStringAsFixed(1),
                        style: kMeduimNumberTextStyle,
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
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: kMeduimLabelTextStyle,
                            ),
                            Text(
                              weight.toStringAsFixed(0),
                              style: kMeduimNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                DecrementButton(
                                  onTap: _decrementWeight,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                IncrementButton(
                                  onTap: _incrementWeight,
                                ),
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
                              'AGE',
                              style: kMeduimLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kMeduimNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                DecrementButton(
                                  onTap: _decrementAge,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                IncrementButton(
                                  onTap: _incrementAge,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CalculateButton(
                onTap: () {
                  BMRCalculator bmrCalculator = BMRCalculator(
                    height: height,
                    weight: weight,
                    age: age,
                    gender: gender,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMRResult(
                        bmrResult: bmrCalculator.getBMRResult(),
                        genderIcon: bmrCalculator.getGenderIcon(),
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
  void _decrementAge() => setState(() {
        age--;
      });

  void _incrementAge() => setState(() {
        age++;
      });
}
