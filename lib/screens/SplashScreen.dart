import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
      gifPath: "assets/gif/splash.gif",
      gifWidth: 250,
      gifHeight: 150,
      backgroundColor: const Color(0xFF2E2E2E),
      duration: const Duration(seconds: 3),
      nextScreen: const LoginScreen(),
    );
  }
}
