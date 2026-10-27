import 'package:flutter/material.dart';
import 'package:msedcl/game_page.dart';
import 'package:msedcl/tile.dart';

import 'game.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home: Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
            child: Text('Birdle')),
      ),
        body: Center(
          child: GamePage(), // NEW
        ),
      )
      ,
    );
  }
}