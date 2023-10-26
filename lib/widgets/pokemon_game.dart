import 'dart:math';
import 'package:pokemon_quiz/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_quiz/models/pokemon.dart';

class PokemonGame extends StatefulWidget {
  const PokemonGame({required this.pokemonList, super.key});
  final List<Pokemon> pokemonList;

  @override
  State<PokemonGame> createState() => _PokemonGameState();
}

class _PokemonGameState extends State<PokemonGame> {
  List<Icon> score = [];

  String _getRandomName() {
    return widget.pokemonList[Random().nextInt(149)].name.capitalize();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Certos: 0",
                    style: const TextStyle(
                      fontSize: 25,
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Errados: 0",
                    style: const TextStyle(
                      height: 2,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ]),
        Row(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: Text(
                    _getRandomName(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: Text(
                    _getRandomName(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: Text(
                    _getRandomName(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: Text(
                    _getRandomName(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
        // Expanded(
        //   flex: 5,
        //   child: Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: TextButton(
        //         style: TextButton.styleFrom(
        //           backgroundColor: Colors.blue,
        //         ),
        //         onPressed: () {},
        //         child: Text(
        //           _getRandomName(),
        //           textAlign: TextAlign.center,
        //           style: const TextStyle(
        //             fontSize: 25.0,
        //             color: Colors.white,
        //           ),
        //         )),
        //   ),
        // ),
      ],
    );
  }
}
