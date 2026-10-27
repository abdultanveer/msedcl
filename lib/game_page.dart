import 'package:flutter/material.dart';
import 'package:msedcl/game.dart';
import 'package:msedcl/tile.dart';


class GamePage extends StatelessWidget {
   GamePage({super.key});
  final Game _game = Game();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),

      child: Column(

        children: [
          for (final guess in _game.guesses)
            Row(
              children: [
                for (final letter in guess) Tile(letter.char, letter.type),

              ],
            )
        ],
      ),
    );
  }
}
