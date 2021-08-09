import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Pokedex",
      home: Home(),
      debugShowCheckedModeBanner:false,
    ),
  );
}