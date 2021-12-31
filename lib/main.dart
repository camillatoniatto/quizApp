import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Pergunta respondida!');
  }
  @override
  Widget build(BuildContext context) {
    final perguntas =[
        'Qual sua cor favorita?',
        'Qual seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(onPressed: _responder, child: const Text('Resposta 1')),
            ElevatedButton(onPressed: _responder, child: const Text('Resposta 2')),
            ElevatedButton(onPressed: _responder, child: const Text('Resposta 3')),
            ElevatedButton(onPressed: _responder, child: const Text('Resposta 4')),
          ],
        ),
      ),
    );

  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
