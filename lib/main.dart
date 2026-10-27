import 'package:flutter/material.dart';

void main() {
  runApp(
   new MaterialApp(
     title: "msdecl app",
     home: new Material(
       color: Colors.blue,
       child:  Center(
           child:
       Text("hello world",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0,color: Colors.amber),
       ))
     ),
     ),
   );
}


