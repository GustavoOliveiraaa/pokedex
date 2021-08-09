import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atributes extends StatelessWidget {

  final Color containerColor;
  final String typePokemon; 

  const Atributes({
    required this.containerColor,
    required this.typePokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: this.containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Text(
              this.typePokemon,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

} 