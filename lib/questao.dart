import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.listaDePergunta, this.pergunta, {super.key});

  final List<Map<String, Object>> listaDePergunta;

  final int pergunta;

  @override
  Widget build(BuildContext context) {
    return Text(
      listaDePergunta[pergunta]['texto'] as String,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
