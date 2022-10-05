

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Button',
      debugShowCheckedModeBanner: false,
      home: MyView(),
    );
  }
}

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Tugas Button'),
        flexibleSpace: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
        Colors.green,
        Colors.blue
      ])          
    ),
  ), 
      ),
      body: Center(
        child: ElevatedButton(
          
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 23),
            ),overlayColor: MaterialStateProperty.all(Colors.red),//untuk merubah warna ketika di click menjadi warna merah
            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),//untuk menentukan ukuran padding
          ), 
          child: Text('Click me'),
          onPressed: () {
            _showDialog(context);
          },
        ),
      ),
    );
  }
}


void _showDialog(BuildContext context) {
   // membuat set up button ok
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { Navigator.of(context).pop();},
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("WARNING!!!"),
        content: new Text("1462000282 Muhammad Rifki Fikri Firdaus Pengembangan Aplikasi Bergerak E"),
        actions: [okButton,],

      );
    },
  );
}