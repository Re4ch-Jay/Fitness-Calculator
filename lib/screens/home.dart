import 'package:flutter/material.dart';
import '../widgets/fitness_card.dart';
import './bmi/bmi.dart';
import './bmr/bmr.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

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
            children: [
              const Text(
                'Make fitness a habit.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    FitnessCard(
                      icon: Icons.fitness_center,
                      title: 'BMI',
                      subTitle: 'Calculate the Body Mass Index',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BMI(),
                          ),
                        );
                      },
                    ),
                    FitnessCard(
                      icon: Icons.fitness_center,
                      title: 'BMR',
                      subTitle: 'Calculate the Basic Metabolic Rate',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BMR(),
                          ),
                        );
                      },
                    ),
                    const FitnessCard(
                      icon: Icons.fitness_center,
                      title: 'IDW',
                      subTitle: 'Calculate the Ideal Weight',
                      onTap: null,
                    ),
                    const FitnessCard(
                      icon: Icons.fitness_center,
                      title: 'Calorie',
                      subTitle: 'Calculate the Calorie',
                      onTap: null,
                    ),
                    const FitnessCard(
                      icon: Icons.fitness_center,
                      title: 'Body Fat',
                      subTitle: 'Calculate the Body Fat',
                      onTap: null,
                    ),
                    const FitnessCard(
                      icon: Icons.fitness_center,
                      title: 'Weight',
                      subTitle: 'Calculate the Healthy Weight',
                      onTap: null,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
