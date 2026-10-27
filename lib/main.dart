import 'package:flutter/material.dart';

void main() {
  runApp(
   MyWidget()
   );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "msdecl app",
      home: Scaffold(
        appBar: AppBar(title: Text("my appbar"),),
        body: new Material(
          color: Colors.amber,
          child: Center(
            child: Text("welcome to flutter stateless",textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.green,fontSize: 25.0),),
          ),
        ),

      ),
    );
  }
}



