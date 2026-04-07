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
          title: Text("Minha Tela"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(Icons.thumb_up, size:60),
             SizedBox(height: 30,),
              Text("D.S. é o melhor curso de SESI?", 
              style: TextStyle(fontSize: 22, color: Colors.red)),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                print("Usuário clicou");
              },
              child: Text("Curtir"), )
          ]
          ),
        ),
      )
    );
  }
}

