import 'package:flutter/material.dart';
import 'package:pokemon_quiz/screens/gamescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poke Quiz',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/': (context) => const GameScreen(),
        // '/victory': (context) => const VictoryScreen(),
      },
      initialRoute: '/',
    );
  }
}
