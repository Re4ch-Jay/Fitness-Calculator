import 'package:fitness_health_calculator/screens/dashboard.dart';
import 'package:fitness_health_calculator/widgets/rectangle_button.dart';
import 'package:flutter/material.dart';
import 'package:fitness_health_calculator/utils/utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Calculator'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/background.png'),
              const Text(
                'Welcome! Amazing People',
                style: kLabelTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Tracking and analysis your health and fitness with Fitness Calculator.',
              ),
              const SizedBox(
                height: 20,
              ),
              RectangleButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Dashboard(),
                  ),
                ),
                title: 'Go To Dashboard',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
