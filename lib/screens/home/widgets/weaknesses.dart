import 'package:flutter/cupertino.dart';
import 'package:pokedex/screens/home/widgets/atributes.dart';
import 'package:pokedex/style.dart';

class Weaknesses extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Fraquezas",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Atributes(
              containerColor: grassTheme,
              typePokemon: "Grama",
            ),
            Atributes(
              containerColor: eletricTheme,
              typePokemon: "Eletrecidade",
            ),
            Atributes(
              containerColor: fightingTheme,
              typePokemon: "Lutador",
            ),
            Atributes(
              containerColor: rockTheme,
              typePokemon: "Pedra",
            )
          ],
        ),
      ],
    );
  }

}