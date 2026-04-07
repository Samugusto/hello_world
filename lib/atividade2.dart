import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContadorTela(),
      );
    }
  }

  class ContadorTela extends StatefulWidget {
    const ContadorTela({super.key});
  
  @override
  _ContadorTelaState createState() => _ContadorTelaState();
  }
  
class _ContadorTelaState extends State<ContadorTela> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        title: Text("Atividade-2 / curtidas"), 
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(Icons.favorite, size:90, color: const Color.fromARGB(255, 68, 255, 0),),
             SizedBox(height: 30,),
              Text("$contador curtidas", style: TextStyle(fontSize: 40),),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: incrementar,      
              child: Text("Curtir")
               )
          ]
          ),
        ),
      );
  }
}

