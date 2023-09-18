import 'package:flutter/material.dart';

//this . text looks for var names it and assigns the inherited the value to it
class StylText extends StatelessWidget {
  const StylText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 28,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
