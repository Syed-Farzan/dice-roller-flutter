import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState() {
    return _Dicerollerstate();
  }
}

class _Dicerollerstate extends State<Diceroller> {
  var currentdicerole = 1;

  void rolldice() {
    setState(
      () {
        currentdicerole = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdicerole.png',
          width: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 28),
            //padding: const EdgeInsets.only(
            //top: 30,
            //),
          ),
          child: const Text(
            'Roll dice',
          ),
        ),
      ],
    );
  }
}
