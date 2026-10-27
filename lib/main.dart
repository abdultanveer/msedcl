import 'package:flutter/material.dart';

void main() {
  runApp(
   new MaterialApp(
     title: "msdecl app",
      home: Scaffold(
      appBar: AppBar(title: Text("my appbar"),),
        body: new Material(
          color: Colors.amber,
          child: Center(
            child: Text("welcome to flutter",textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.green,fontSize: 25.0),),
          ),
        ),

    ),
     ),
   );
}


