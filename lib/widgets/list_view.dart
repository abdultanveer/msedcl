import 'package:flutter/material.dart';

void main(){
  runApp(MyListApp());
}

class MyListApp extends StatelessWidget {
  const MyListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'list demo',
      home: Scaffold(
        appBar: AppBar(title: Text('List demo'),),
        body: ListView(
          scrollDirection: Axis.horizontal,

          children: <Widget>[
            Container(width: 160,  child:
            ListTile( leading: Icon(Icons.map),title: Text('GMap'),)),
    Container(width: 160,  child:

    ListTile( leading: Icon(Icons.photo_album),title: Text('Album'),)),
    Container(width: 160, child:
    ListTile( leading: Icon(Icons.phone),title: Text('Phone'),))

          ],
        ),
      ),
    );
  }
}
