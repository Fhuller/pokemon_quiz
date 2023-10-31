import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final int correctAttempts;
  final int incorrectAttempts;

  ResultsScreen(this.correctAttempts, this.incorrectAttempts);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Parabéns!! Tentativas corretas: $correctAttempts'),
          ],
        ),
      ),
    );
  }
}
