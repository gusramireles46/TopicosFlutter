import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:topicos2023/componets/onboarding_card.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final data = [
    CardPlanetData(
      title: "Ori and the blind forest",
      subtitle:
          "Es un videojuego de plataforma aventura de un jugador con el estilo de Metroidvania diseñado por Moon Studios, "
          "un desarrollador independiente, y publicado por Microsoft Studios.",
      image: const AssetImage("assets/images/ori_1.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animations/lottie_1.json"),
    ),
    CardPlanetData(
      title: "Little Nightmares",
      subtitle: "An endless number of galaxies means endless possibilities.",
      image: const AssetImage("assets/images/little_nightmares.png"),
      backgroundColor: Colors.white,
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/animations/lottie_1.json"),
    ),
    CardPlanetData(
      title: "stargaze",
      subtitle: "The sky dome is a beautiful graveyard of stars.",
      image: const AssetImage("assets/images/gris.png"),
      backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
      titleColor: Colors.yellow,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animations/lottie_2.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor!).toList(),
        itemCount: data.length,
        itemBuilder: (index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
