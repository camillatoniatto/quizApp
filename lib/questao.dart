import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  //const Questao({Key? key}) : super(key: key);
  final String text;
  Questao(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}