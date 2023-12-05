import 'package:flutter/material.dart';
import 'package:topicos2023/screens/ConversorScreen.dart';
import 'package:topicos2023/screens/DashboardScreen.dart';
import 'package:topicos2023/screens/IntentsScreen.dart';
import 'package:topicos2023/screens/PopularScreen.dart';
import 'package:topicos2023/screens/SplashScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:topicos2023/screens/fruits_screen.dart';
import 'package:topicos2023/screens/onboarding_page.dart';
import 'package:topicos2023/theme/darkTheme.dart';

void main() => runApp(const Topicos());

class Topicos extends StatelessWidget {
  const Topicos({super.key});

  Route<dynamic> _getPageRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/temp':
        return PageTransition(
          child: const ConversorScreen(),
          type: PageTransitionType.fade,
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 300),
        );
      case '/dash':
        return PageTransition(
          child: const DashboardScreen(),
          type: PageTransitionType.scale,
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 600),
        );
      case '/int':
        return PageTransition(
          child: const IntencionesScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        );
      case '/movies':
        return PageTransition(
          child: const PopularScreen(),
          type: PageTransitionType.fade,
          childCurrent: const DashboardScreen(),
          duration: const Duration(milliseconds: 500),
        );
      case '/fruits':
        return PageTransition(
          child: const FruitsScreen(),
          type: PageTransitionType.fade,
          childCurrent: const DashboardScreen(),
          duration: const Duration(milliseconds: 500),
        );
      case '/onb':
        return PageTransition(
          child: OnboardingPage(),
          type: PageTransitionType.fade,
          childCurrent: const DashboardScreen(),
          duration: const Duration(milliseconds: 500),
        );
      default:
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
      onGenerateRoute: (settings) => _getPageRoute(settings),
      initialRoute: '/',
    );
  }
}
