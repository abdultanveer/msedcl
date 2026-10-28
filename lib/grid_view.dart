import 'package:flutter/material.dart';

void main(){
  runApp(new GridApp());
}

class GridApp extends StatelessWidget {
  const GridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'grid view demo',
      home: Scaffold(
        appBar: AppBar(title: Text('grid demo'),),
        body: GridView.count(crossAxisCount: 2,
        children:
          List.generate(100, (index){
            return Center(
                child:
              Text('data $index')
            );
          })
        ,)
        //Text('item 1')
      )
    );
  }
}
