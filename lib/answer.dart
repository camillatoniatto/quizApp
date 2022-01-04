import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() isSelected;

  Answer(this.text, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: isSelected,
      ),
    );
  }
}
