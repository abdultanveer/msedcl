
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'My First App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Center(
          child: Text(
            'Hello World: $counter',
            style: const TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
  }


