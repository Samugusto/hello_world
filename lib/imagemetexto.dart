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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/imagem.jpg"),
          fit: BoxFit.cover
          ),
         ),
         child: const Center(
          child: Text(
            "Death is stranding",
            style: TextStyle(fontSize: 30,
            color: Color.fromARGB(210, 180, 148, 7),
            fontWeight: FontWeight.bold
            ),
            ),
         ),
        ),
      ),
    );
  }
}

