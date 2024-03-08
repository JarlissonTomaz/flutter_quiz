import 'package:flutter/material.dart';
import 'package:flutter_teste_crud/questionario.dart';
import 'package:flutter_teste_crud/resultado.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var _pergunta = 0;
  var pontuacaoTotal = 0;

  void _respondido(int pontos) {
    setState(() {
      if (temItemNaLista) {
        _pergunta++;
        pontuacaoTotal += pontos;
      }
    });
  }

  final List<Map<String, Object>> _listaDePergunta = const [
    {
      'texto': 'Pergunta 1',
      'resposta': [
        {'texto': 'a', 'pontuacao': 10},
        {'texto': 'b', 'pontuacao': 5},
        {'texto': 'c', 'pontuacao': 2},
      ]
    },
    {
      'texto': 'Pergunta 2',
      'resposta': [
        {'texto': 'd', 'pontuacao': 10},
        {'texto': 'e', 'pontuacao': 5},
        {'texto': 'f', 'pontuacao': 2},
      ]
    },
    {
      'texto': 'Pergunta 3',
      'resposta': [
        {'texto': 'g', 'pontuacao': 10},
        {'texto': 'h', 'pontuacao': 5},
        {'texto': 'i', 'pontuacao': 2},
      ]
    }
  ];

  bool get temItemNaLista {
    return _pergunta < _listaDePergunta.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Teste de Conhecimento'),
        ),
        body: temItemNaLista
            ? Center(
                child: Column(children: [
                  Questionario(
                    respondido: _respondido,
                    listaDePergunta: _listaDePergunta,
                    pergunta: _pergunta,
                  )
                ]),
              )
            : Resultado(pontuacaoTotal));
  }
}
