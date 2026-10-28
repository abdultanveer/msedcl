import 'package:flutter/material.dart';
void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title:  Text(appTitle)),
        body:  const SingleChildScrollView(
          child: Column(
              children: [
                TitelSection(
                  name: 'Oeschinen Lake Campground',
                  location: 'Kandersteg, Switzerland',
                ),
              ]
      )
        ),
      );
    );
  }
}

class TitelSection extends StatelessWidget {
  TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold),),
            Text(location, style: TextStyle(color: Colors.grey[500])),
          ],
        )
        )
        Icon(Icons.star, color: Colors.red[500]),
        const Text('41'),
      ],
    );
  }
}
