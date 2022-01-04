import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final int selectedQuestion;
  final void Function(int) onAnswered;

  Quiz(
      {required this.questions,
      required this.selectedQuestion,
      required this.onAnswered});

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map> answers = hasSelectedQuestion
        ? questions[selectedQuestion].cast()['answers']
        : [];

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['text'].toString()),
        ...answers.map((ans) {
          return Answer(
            ans['text'],
            () => onAnswered(ans['grade']),
          );
        }).toList(),
      ],
    );
  }
}
