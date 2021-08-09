import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/home/widgets/pokemon_details.dart';
import 'package:pokedex/screens/home/widgets/weaknesses.dart';
import 'package:pokedex/style.dart';

class Home extends StatelessWidget {
  
  final pokemon = Pokemon(
    photo: "assets/images/lapras.png",
    height: 2.5,
    type: ["Água", "Gelo"], 
    weight: 220.0, 
    ability: ["Water Absorb", "Shell Armor"],
    description: "Um Pokémon inteligente e bondoso, ele desliza pela superfície do mar enquanto sua bela canção ecoa ao seu redor.",
    weakness:["Grama","Elétrico","Lutador","Pedra"] 
    );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lapras  #131",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        leading: Image.asset (
          "assets/images/logo.png"
        ),
        backgroundColor: redTheme,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(
              pokemon.photo
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      pokemon.description
                    ),
                  ],
                ),
              ),
            ),
            PokemonDetails(pokemon),
            Weaknesses(),
          ]
        ),
      ),
    );
  }
}