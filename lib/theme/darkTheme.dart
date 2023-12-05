import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    //background: const Color(0xFF222222),
    background: const Color(0xFF1B1A1F),
    primary: const Color(0xCC1B1A1F),
    secondary: Colors.grey[800]!,
    shadow: const Color(0xFF000000),
  ),
);
