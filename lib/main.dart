import 'package:flutter/material.dart';
import './resultQuiz.dart';
import './quiz.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _rank = 0;
  final List<Map> _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': [
        {'text': 'Preto', 'grade': 6},
        {'text': 'Vermelho', 'grade': 7},
        {'text': 'Verde', 'grade': 5},
        {'text': 'Azul', 'grade': 3},
      ],
    },
    {
      'text': "Qual é a sua série favorita?",
      'answers': [
        {'text': "Supernatural", 'grade': 4},
        {'text': "Grey's Anatomy", 'grade': 8},
        {'text': "Friends", 'grade': 5},
        {'text': "Black Mirror", 'grade': 9},
      ]
    },
    {
      'text': 'Qual é seu estilo de música favorito?',
      'answers': [
        {'text': 'Pop', 'grade': 7},
        {'text': 'Funk', 'grade': 5},
        {'text': 'Rock', 'grade': 5},
        {'text': 'Sertanejo', 'grade': 4},
      ],
    }
  ];

  void _answered(int grade) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _rank += grade;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _rank = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
        ),
        body: hasSelectedQuestion
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                onAnswered: _answered,
              )
            : ResultQuiz(_rank, _resetQuiz),
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
