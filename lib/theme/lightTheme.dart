import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    //background: const Color(0xFF222222),
    background: Color(0xFFFFFFFF),
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFFDDDDDD),
    shadow: Color(0xFF000000),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFF000000),
    ),
  ),
  hintColor: const Color(0xFF555555),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Color(0xFF000000),
    ),
    bodyLarge: TextStyle(
      color: Color(0xFF000000),
      fontSize: 18,
    ),
  ),
  shadowColor: const Color(0xFF000000),
);
