import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:topicos2023/componets/onboarding_card.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final data = [
    CardPlanetData(
      title: 'Tecnológico Nacional de México\nInstituto Tecnológico de Celaya',
      subtitle:
          'El Tecnológico de Celaya ahora TecNM en Celaya, inicia actividades el 14 de abril de 1958 como un '
          'Centro de Segunda Enseñanza y Capacitación Técnica para Trabajadores.'
          'El TecNM en Celaya por sus indicadores académicos, se coloca en los primeros lugares nacionales.',
      image: const AssetImage('assets/images/itcelaya_logo.png'),
      backgroundColor: const Color(0xFFFFFFFF),
      titleColor: const Color(0xFFFFFFFF),
      shadowColor: const Color(0xFF1B396A),
      subtitleColor: const Color(0xFF006522),
      background: LottieBuilder.asset('assets/animations/lottie_1.json',
          fit: BoxFit.fill),
    ),
    CardPlanetData(
      title: 'La mascota:\nLinces',
      subtitle:
          'El logo fue creado en 1974, su autor fue el dibujante Carlos Lara Maldonado',
      image: const AssetImage('assets/images/lince_logo.png'),
      backgroundColor: const Color(0xFFEEEEEE),
      titleColor: const Color(0xFFFFFFFF),
      shadowColor: const Color(0xFF117533),
      subtitleColor: const Color(0xFF1B396A),
      background: LottieBuilder.asset('assets/animations/lottie_1.json',
          fit: BoxFit.fill),
    ),
    CardPlanetData(
      title: 'Institución',
      subtitle:
          'En materia de instalaciones físicas y equipamiento de laboratorios y talleres, '
          'ha sido notable el paulatino avance hasta llegar a cubrir casi en su totalidad 20 hectáreas '
          '(en sus dos campus)',
      image: const AssetImage('assets/images/institucion.png'),
      backgroundColor: const Color(0xFF1B396A),
      titleColor: const Color(0xFFFFFFFF),
      shadowColor: const Color(0xFF000000),
      subtitleColor: const Color(0xFFFFFFFF),
      background: LottieBuilder.asset('assets/animations/lottie_2.json',
          fit: BoxFit.fill),
    ),
    CardPlanetData(
      title: 'Ingeniería en Sistemas Computacionales',
      subtitle:
          'Las y los egresados de Ingeniería en Sistemas Computacionales serán profesionistas, '
          'analíticos, críticos, creativos, con liderazgo y con visión estratégica, amplio sentido ético, '
          'capaz de diseñar, administrar e implementar infraestructura computacional para aportar soluciones '
          'creativas e innovadoras en beneficio de la sociedad, en un contexto global, multidisciplinario y '
          'sustentable.',
      image: const AssetImage('assets/images/sistemas.png'),
      backgroundColor: const Color(0xFF30377B),
      /*backgroundGradient: const LinearGradient(
          colors: [Color(0xFF4153B2), Color(0xFF221D44), Color(0xFF000000)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),*/
      titleColor: const Color(0xFFFFFFFF),
      shadowColor: const Color(0xFF000000),
      subtitleColor: const Color(0xFFFFFFFF),
      background: LottieBuilder.asset('assets/animations/lottie_3.json',
          fit: BoxFit.fill),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors:
            data.map((e) => e.backgroundColor ?? Colors.transparent).toList(),
        itemCount: data.length,
        itemBuilder: (index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
