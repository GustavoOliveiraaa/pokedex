import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/home/widgets/atributes.dart';
import 'package:pokedex/style.dart';

class PokemonDetails extends StatelessWidget {
  final Pokemon _pokemon;
  PokemonDetails(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: lightBlueTheme,
        borderRadius: BorderRadius.all(
          Radius.circular(5)
        )
      ),
      width: MediaQuery.of(context).size.width,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column( //Coluna altura
                  children: [
                    Text(
                      "Altura",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "${this._pokemon.height} m",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Column(//Tipo
                  children: [
                    Text(
                      "Tipo",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Atributes(
                          containerColor: otherBlueTheme,
                          typePokemon: this._pokemon.type[0],
                        ),
                        SizedBox(width: 8,),
                        Atributes(
                          containerColor: iceTheme,
                          typePokemon: this._pokemon.type[1],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Column(//Peso
                  children: [
                    Text(
                      "Peso",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "${this._pokemon.weight} kg",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                ],
                ),
                SizedBox(height: 30,),
                Column(//Habilidade
                  children: [
                    Text(
                      "Habilidades",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "${this._pokemon.ability[0]}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${this._pokemon.ability[1]}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
}