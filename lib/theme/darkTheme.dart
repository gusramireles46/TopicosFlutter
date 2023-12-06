import 'package:flutter/material.dart';

/*ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    //background: const Color(0xFF222222),
    background: const Color(0xFF1B1A1F),
    primary: const Color(0xCC1B1A1F),
    secondary: Colors.grey[800]!,
    shadow: const Color(0xFF555555),
  ),
  shadowColor: const Color(0xFF555555)
);*/

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    //background: const Color(0xFF222222),
    background: const Color(0xFF1B1A1F),
    primary: const Color(0xCC1B1A1F),
    secondary: Colors.grey[800]!,
    shadow: const Color(0xFF555555),
  ),
  shadowColor: const Color(0xFF555555),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFFFFFFFF),
    ),
  ),
  hintColor: const Color(0xFFAAAAAA),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Color(0xFFFFFFFF),
    ),
    bodyLarge: TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 18,
    ),
  ),
);
