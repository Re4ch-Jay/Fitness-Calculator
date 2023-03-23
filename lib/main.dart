import 'package:flutter/material.dart';
import '../screens/home.dart';
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