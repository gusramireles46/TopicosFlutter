import 'package:flutter/material.dart';

class CardPlanetData {
  final String? title;
  final String? subtitle;
  final ImageProvider? image;
  final Color? backgroundColor;
  final LinearGradient? backgroundGradient;
  final Color? titleColor;
  final Color? subtitleColor;
  final Color? shadowColor;
  final Widget? background;

  CardPlanetData({
    required this.title,
    required this.subtitle,
    required this.image,
    this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.backgroundGradient,
    this.shadowColor,
    this.background,
  });
}

class CardPlanet extends StatelessWidget {
  const CardPlanet({
    required this.data,
    super.key,
  });

  final CardPlanetData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (data.background != null) data.background!,
        Container(
          decoration: BoxDecoration(
            gradient: data.backgroundGradient,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 3),
                Flexible(
                  flex: 20,
                  child: Image(image: data.image!),
                ),
                const Spacer(flex: 10),
                Text(
                  data.title!.toUpperCase(),
                  style: TextStyle(
                    shadows: data.shadowColor != null
                        ? [
                            Shadow(
                              color: data.shadowColor!,
                              blurRadius: 10,
                              offset: const Offset(3, 1),
                            ),
                          ]
                        : null,
                    color: data.titleColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                const Spacer(flex: 1),
                Text(
                  data.subtitle!,
                  style: TextStyle(
                    color: data.subtitleColor,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 8,
                ),
                const Spacer(flex: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
