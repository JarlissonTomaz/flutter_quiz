import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(this.respondido, this.texto, {super.key});

  final void Function() respondido;

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 3,
      ),
      child: OutlinedButton(
        onPressed: respondido,
        child: Text(texto),
      ),
    );
  }
}
