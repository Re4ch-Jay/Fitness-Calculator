import 'package:fitness_health_calculator/utils/utils.dart';
import 'package:fitness_health_calculator/widgets/re_calculate_button.dart';
import 'package:flutter/material.dart';

class IDWResult extends StatelessWidget {
  const IDWResult({
    super.key,
    required this.idwResult,
    required this.genderIcon,
  });

  final double idwResult;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IDW Calculator'),
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
                      Icon(
                        genderIcon,
                        color: Colors.deepPurple,
                        size: 150,
                      ),
                      const Text(
                        'Result',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        idwResult.toStringAsFixed(1),
                        style: kNumberTextStyle,
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
