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
        body: const MyInputForm(),
      ),
    );
  }
}



class MyInputForm extends StatefulWidget {
  const MyInputForm({super.key});

  @override
  State<MyInputForm> createState() => _MyInputFormState();
}

class _MyInputFormState extends State<MyInputForm> {
 
  final TextEditingController myController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('input handling'),),
      body:      Column(
        children: [
          TextField(controller: myController,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          showDialog<void>(context: context,
              builder: (context){
            return AlertDialog(
              content: Text(myController.text),
            );
              });
        },
        tooltip: 'show the value',
          child: const Icon(Icons.text_fields),
      ),
    );
      
   
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
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

