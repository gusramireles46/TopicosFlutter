import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:topicos2023/componets/onboarding_card.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final data = [
    CardPlanetData(
      title: 'Ori and the blind forest',
      subtitle:
          'El bosque de Nibel perece. Tras una poderosa tormenta que desencadena una serie de devastadores acontecimientos, '
          'Ori emprende una travesía para encontrar el valor y enfrentarse a una némesis oscura para salvar el bosque de Nibel. "Ori and the Blind Forest" '
          'cuenta la historia de un joven huérfano destinado a realizar heroicas hazañas.',
      image: const AssetImage('assets/images/ori_1.png'),
      backgroundColor: const Color(0xFFC9EAFD),
      titleColor: const Color(0xFFFFFFFF),
      shadowColor: const Color(0xFFD1A130),
      subtitleColor: const Color(0xFF000000),
      background: LottieBuilder.asset('assets/animations/lottie_1.json',
          fit: BoxFit.fill),
    ),
    CardPlanetData(
      title: 'Little Nightmares',
      subtitle:
          'Ayuda a Six a escapar de Las Fauces, un enorme y misterioso navío habitado por almas corruptas en busca de su siguiente comida. '
          'A medida que avanzas en tu aventura, explorarás una casita de muñecas espeluznante que actúa como prisión de la que tendrás que escapar y '
          'un patio de juegos repleto de secretos por descubrir.',
      image: const AssetImage('assets/images/little_nightmares.png'),
      backgroundColor: const Color(0xFFEFC415),
      titleColor: const Color(0xFF000000),
      shadowColor: const Color(0xFF9B9758),
      subtitleColor: const Color(0xFF423B2C),
      background: LottieBuilder.asset('assets/animations/lottie_1.json',
          fit: BoxFit.fill),
    ),
    CardPlanetData(
      title: 'Gris',
      subtitle:
          'Gris es una muchacha llena de esperanzas y perdida en su propio mundo, enfrentada a una experiencia dolorosa de su vida. '
          'Su viaje a través de la tristeza se manifiesta en su vestido, que le otorga nuevas habilidades para recorrer mejor su realidad difuminada.',
      image: const AssetImage('assets/images/gris.png'),
      backgroundColor: const Color(0xFF8D024A),
      titleColor: const Color(0xFF87BFB4),
      subtitleColor: const Color(0xFFEEF2CF),
      background: LottieBuilder.asset('assets/animations/lottie_2.json',
          fit: BoxFit.fill),
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
