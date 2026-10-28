import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form title',
      home: Scaffold(
        appBar: AppBar(title: Text('text input'),),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

    children: [


      TextField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Enter your name'
      ),
    ),

    TextField(
      decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Enter your password'
      ),
    )
    ]
    );
  }
}

