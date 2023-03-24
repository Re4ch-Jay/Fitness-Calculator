import 'package:fitness_health_calculator/screens/home.dart';
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const Home(),
    );
  }
}
