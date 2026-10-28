import 'package:flutter/material.dart';


void main(){
  runApp(CustomListApp(items: List<ListItem>.generate(
    1000,
        (i) => i % 6 == 0
        ? HeadingItem('Heading $i')
        : MessageItem('Sender $i', 'Message body $i'),
  ),
  ),);

}

class CustomListApp extends StatelessWidget {
  final List<ListItem> items;

  const CustomListApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'customm  lists',
      home: Scaffold(
        appBar: AppBar(title: Text('Custom lists'),),
        body: ListView.builder(itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          )
        },),

      ),
    );
  }
}
