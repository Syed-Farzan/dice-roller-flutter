import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Gradientcpy(
        Color.fromARGB(255, 239, 14, 14),
        Color.fromARGB(115, 255, 0, 0),
      ),
    ),
  );
}

class Gradientcpy extends StatelessWidget {
  const Gradientcpy(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/khus.jpeg',
                width: 400,
              ),
              const Text(
                'who are u',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
