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
        body:  MyCustomForm(),
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

  void _printLatestValue() {
    final text = myController.text;
    print('Second text field: $text (${text.characters.length})');
  }

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('input handling'),),
      body:      Column(
        children: [
          TextField(controller: myController,autofocus: true,)
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
   MyCustomForm({super.key});

  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:
      
      Column(

    children: [


      TextField(
        onChanged: (text){
          print('First text field: $text (${text.characters.length})');
        },

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
    ),
      TextFormField(
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
      ElevatedButton(
        onPressed: () {
          // Validate returns true if the form is valid, or false otherwise.
          if (_formKey.currentState!.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Processing Data')),
            );
          }
        },
        child: const Text('Submit'),
      )

    ])
    );
  }
}

