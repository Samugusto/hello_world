import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("atividade 1"),
        ),
        body: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
          width: 200,
          height: 100,
          color: const Color.fromARGB(255, 0, 64, 255),
          child: Center(
          child: Text("Container 1", style: TextStyle(color: Colors.white),),)
              ),
              SizedBox(height: 20,),
              Row(            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
          width: 80,
          height: 80,
          color: const Color.fromARGB(255, 255, 0, 0),
              ),
              SizedBox(width: 20),
              Container(
          width: 80,
          height: 80,
          color: const Color.fromARGB(255, 0, 255, 94),
              ),
              SizedBox(width: 0),

            ],),
            ],
          ),
        ),
      )
    );
  }
}

