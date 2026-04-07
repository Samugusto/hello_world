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
          title: Text("Texto Column"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.heart_broken, size: 50),
              Text("Flutter layout",
              style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
              onPressed: () {}, 
              child: Text("clique aqui"),
              )
            ],
          ),
        ),
      )
    );
  }
}

