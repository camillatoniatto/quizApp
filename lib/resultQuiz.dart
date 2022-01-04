import 'package:flutter/material.dart';

class ResultQuiz extends StatelessWidget {
  final int rank;
  final void Function() onResetQuiz;

  ResultQuiz(this.rank, this.onResetQuiz);

  String get resultText {
    if (rank < 15) {
      return 'Parabéns!';
    } else if (rank < 20) {
      return 'Você é bom!';
    } else if (rank < 25) {
      return 'Impressionante!';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultText,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: onResetQuiz,
          child: Text(
            'Jogar novamente',
            style: TextStyle(fontSize: 15),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
            primary: Colors.white,
          ),
        ),
      ],
    );
  }
}
