import 'package:flutter/widgets.dart';

abstract class Produtos extends StatelessWidget {

  final String nome;
  final double preco;
  final String desc;
  final String imagemURl;
  final VoidCallback onTap;

  const Produtos({
    Key? key,
    required this.nome,
    required this.preco,
    required this.desc,
    required this.imagemURl,
    required this.onTap});
}