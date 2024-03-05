import 'package:flutter/material.dart';
import 'package:flutter_teste_crud/questao.dart';
import 'package:flutter_teste_crud/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    required this.respondido,
    required this.listaDePergunta,
    required this.pergunta,
    super.key,
  });

  final void Function() respondido;

  final List<Map<String, Object>> listaDePergunta;

  final int pergunta;

  bool get temItemNaLista {
    return pergunta < listaDePergunta.length;
  }

  @override
  Widget build(BuildContext context) {
    var respostas = temItemNaLista
        ? listaDePergunta[pergunta]['resposta'] as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Questao(listaDePergunta[pergunta]['texto'] as String),
        ...respostas.map((e) => Resposta(respondido, e['texto'] as String))
      ],
    );
  }
}
