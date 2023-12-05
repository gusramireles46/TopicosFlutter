/*import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:topicos2023/componets/onboarding_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final data = [
    CardPlanetData(
      title: "hola",
      subtitle: "gato",
      image: const AssetImage("assets/images/ori_1.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      //background: Lottie.asset("assets/bg-1.json"),
    ),
    CardPlanetData(
      title: "hola",
      subtitle: "gato",
      image: const AssetImage("assets/images/little_nightmares.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      //background: Lottie.asset("assets/bg-1.json"),
    ),
    CardPlanetData(
      title: "hola",
      subtitle: "gato",
      image: const AssetImage("assets/images/gris.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      //background: Lottie.asset("assets/bg-1.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor!).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}*/
