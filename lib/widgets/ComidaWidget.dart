import 'package:atividade3/widgets/produtos.dart';
import 'package:flutter/material.dart';

class ComidaWidget extends Produtos {
  final double peso;
  const ComidaWidget({
    Key? key,
    required this.peso,
    required nome,
    required preco,
    required desc,
    required imagemURl,
    required onTap,
  }) : super(
        key: key,
        nome: nome,
        preco: preco,
        desc: desc,
        imagemURl: imagemURl,
        onTap: onTap,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
        child: Container(
        height: 164,
        width: 400,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child:Image.network(
                imagemURl,
                width: 150,
                height: 150,
                fit: BoxFit.cover),
            ),
            const SizedBox(width: 100,),
            Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(nome, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white70),),
                  const SizedBox(height: 10,),
                  Text(desc, style: TextStyle(fontSize: 12, color: Colors.white70),),
                  const SizedBox(height: 5,),
                  Text("R\$ ${preco.toStringAsFixed(2)}", style: TextStyle(fontSize: 12, color: Colors.white70),),
                  const SizedBox(height: 5,),
                  Text("Peso(KG): ${peso.toStringAsFixed(1)}", style: TextStyle(fontSize: 12, color: Colors.white70),),
                ],
            ))
          ],
        ),
      ),
      )
    );
  }
}
