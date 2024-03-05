import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.perguntaTexto, {super.key});

  final String perguntaTexto;

  @override
  Widget build(BuildContext context) {
    return Text(
      perguntaTexto,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
