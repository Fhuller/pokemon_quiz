import 'package:flutter/material.dart';
import 'package:pokemon_quiz/api/pokeapi.dart';
import 'package:pokemon_quiz/widgets/pokemon_game.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poke Quiz'),
      ),
      // body: const SafeArea(
      //   child: Padding(
      //     padding: EdgeInsets.all(10),
      //     child: PokemonGame(),
      //   ),
      // ),
      body: FutureBuilder(
        future: PokeAPI.getPokemonList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return PokemonGame(pokemonList: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
