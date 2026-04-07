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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Texto e Imagem"),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bem-vindo ",
            style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Image.asset("assets/images/imagem2.jpg", width: 200,
             )
           ],
          ),
        ),
      ),
    );
  }
}