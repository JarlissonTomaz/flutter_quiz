import 'package:flutter/material.dart';
import 'package:flutter_teste_crud/questao.dart';
import 'package:flutter_teste_crud/resposta.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var _pergunta = 0;

  void _resposta() {
    setState(() {
      _pergunta++;
    });
  }

  final List<Map<String, Object>> _listaDePergunta = const [
    {
      'texto': 'Pergunta 1',
      'resposta': ['a', 'b', 'c']
    },
    {
      'texto': 'Pergunta 2',
      'resposta': ['d', 'e', 'f']
    },
    {
      'texto': 'Pergunta 3',
      'resposta': ['g', 'h', 'i']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste de Conhecimento'),
      ),
      body: Center(
        child: Column(
          children: [
            Questao(
              _listaDePergunta,
              _pergunta,
            ),
            Resposta(_resposta, 'Resposta 1'),
            Resposta(_resposta, 'Resposta 2'),
            Resposta(_resposta, 'Resposta 3'),
          ],
        ),
      ),
    );
  }
}