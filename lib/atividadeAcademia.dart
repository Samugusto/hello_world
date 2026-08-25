import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Set<int> checkedTreinos = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text('Treinos', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: const [
          Icon(Icons.calendar_month, color: Colors.white),
          SizedBox(width: 12),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: produtos.length,
                itemBuilder: (context, index) {
                  final produto = produtos[index];
                  final checked = checkedTreinos.contains(produto.id);
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage(produto.imagePath),
                        backgroundColor: Colors.grey.shade200,
                      ),
                      title: Text(produto.nome),
                      subtitle: Text(produto.series),
                      trailing: SizedBox(
                        width: 48,
                        child: Checkbox(
                          value: checked,
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                checkedTreinos.add(produto.id);
                              } else {
                                checkedTreinos.remove(produto.id);
                              }
                            });
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 56,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 255, 0, 0),
                  size: 30,
                ),
                SizedBox(height: 1),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.sports_gymnastics, color: Colors.white),
                SizedBox(height: 4),
                Text(
                  'Treinos',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.white),
                SizedBox(height: 4),
                Text(
                  'Favorito',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// MODELO DO PRODUTO
class treinos {
  final int id;
  final String nome;
  final String series;
  final String imagePath;

  const treinos({
    required this.id,
    required this.nome,
    required this.series,
    required this.imagePath,
  });
}

const List<treinos> produtos = [
  treinos(
    id: 1,
    nome: 'Supino com halteres (peito)',
    series: '4 séries de 400 repetições',
    imagePath: 'assets/images/supino.jpg',
  ),

  treinos(
    id: 2,
    nome: 'Elevação lateral (ombro)',
    series: '4 séries de 400 repetições',
    imagePath: 'assets/images/eleva.jpg',
  ),

  treinos(
    id: 3,
    nome: 'Triceps Pulley',
    series: '4 séries de 400 repetições',
    imagePath: 'assets/images/tricep.jpg',
  ),

  treinos(
    id: 4,
    nome: 'Abdomen',
    series: '4 séries de 400 repetições',
    imagePath: 'assets/images/abdomen.gif',
  ),
];

// ITEM DO CARRINHO

// Classe utilizada para representar um item armazenado dentro do carrinho.
class ItemCarrinho {
  final treinos produto;
  int quantidade;
  // Construtor.
  ItemCarrinho(this.produto, this.quantidade);
}
