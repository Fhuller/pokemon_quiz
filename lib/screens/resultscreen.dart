import 'package:flutter/material.dart';
import 'package:pokemon_quiz/screens/gamescreen.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Parabéns!! Tentativas corretas: $correctAttempts',
                style: TextStyle(fontSize: 20)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(),
                    ),
                  );
                  ;
                },
                child: Text('Jogar Novamente', style: TextStyle(fontSize: 30)),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20)))
          ],
        ),
      ),
    );
  }
}
