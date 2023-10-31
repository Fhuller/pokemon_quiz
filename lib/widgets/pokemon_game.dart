import 'dart:math';
import 'package:pokemon_quiz/screens/resultscreen.dart';
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

  List<String> generateUniquePokemonNames(correctName) {
    List<String> allPokemonNames =
        widget.pokemonList.map((pokemon) => pokemon.name.capitalize()).toList();

    allPokemonNames.remove(correctName);

    allPokemonNames.shuffle();

    return allPokemonNames;
  }

  int acertos = 0;
  int erros = 0;

  int totalAttempts = 0;

  @override
  Widget build(BuildContext context) {
    int correctPokemonPosition = Random().nextInt(149);

    String correctName =
        widget.pokemonList[correctPokemonPosition].name.capitalize();

    dynamic pokemonImg = widget.pokemonList[correctPokemonPosition].image;

    List<String> allPokemonNames = generateUniquePokemonNames(correctName);

    final List<String> buttonLabels = [
      allPokemonNames.removeLast(),
      allPokemonNames.removeLast(),
      allPokemonNames.removeLast(),
      correctName,
    ];

    buttonLabels.shuffle();

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
                    "Certos: $acertos",
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
                    "Errados: $erros",
                    style: const TextStyle(
                      height: 2,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ]),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  pokemonImg,
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomRight,
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: buttonLabels.map((label) {
            return ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  totalAttempts++;

                  if (label == correctName) {
                    acertos++;
                  } else {
                    erros++;
                  }

                  if (totalAttempts == 10) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultsScreen(acertos, erros),
                      ),
                    );
                  }

                  setState(() {});
                },
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ));
          }).toList(),
        ),
      ],
    );
  }
}
