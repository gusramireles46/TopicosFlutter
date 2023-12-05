import 'package:flutter/material.dart';

void main() => runApp(const ConversorScreen());

class ConversorScreen extends StatelessWidget {
  const ConversorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Conversor de temperaturas'),
        ),
    );
  }
}
