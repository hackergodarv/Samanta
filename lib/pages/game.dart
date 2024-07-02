import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/subjects/bst/chapter1.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(game: Chapter1(),) ,
    );
  }
}