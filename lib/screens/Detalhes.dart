import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  final String nome;
  final double preco;
  final String desc;
  final String imagemURl;
  final VoidCallback onTap;
  final String diferencial;

  const Detalhes({
    Key? key,
    required this.nome,
    required this.preco,
    required this.desc,
    required this.imagemURl,
    required this.diferencial,
    required this.onTap});

    @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Detalhes $nome")),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // alinha à esquerda
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imagemURl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 50),
            Text("Nome do Produto: $nome"),
            const SizedBox(height: 100),
            Text("Descrição: $desc"),
            const SizedBox(height: 30),
            Text("Preço atual: R\$ ${preco.toStringAsFixed(2)}"),
            const SizedBox(height: 30),
            Text(diferencial),
          ],
        ),
      ),
    ),
  );
}

}