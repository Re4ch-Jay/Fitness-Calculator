import 'package:flutter/material.dart';

ThemeData appTheme() => ThemeData.light(useMaterial3: true).copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.deepPurple,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.deepPurple[200],
    );
