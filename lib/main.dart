import 'package:flutter/material.dart';
import 'package:atividade3/screens/Detalhes.dart';
import 'package:atividade3/widgets/ComidaWidget.dart';
import 'package:atividade3/widgets/EletronicoWidget.dart';
import 'package:atividade3/widgets/RoupaWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loja do Teixeira',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white70),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        elevation: 4,
      ),
      body: Center(
        child: SizedBox(
          width: 420,
          height: 500,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            children: [
              ComidaWidget(
                peso: 2,
                nome: "Prato Feito",
                preco: 20.33,
                desc: "PF completo",
                imagemURl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEDbvC2jrhmmrjhhLwcBpsr_TlB3vvDxo-_A&s",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detalhes(
                        nome: "Prato feito",
                        preco: 20.33,
                        desc: "Prato feito completo e apetitoso",
                        imagemURl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEDbvC2jrhmmrjhhLwcBpsr_TlB3vvDxo-_A&s",
                        diferencial: "Peso do prato em KG: 2.00",
                        onTap: () {},
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 50),
              EletronicoWidget(
                marca: "Razer",
                nome: "Headset",
                preco: 533.74,
                desc: "Headset Gamer de qualidade",
                imagemURl: "https://cdn.dooca.store/47/products/headset-gamer-razer-kraken-71-v2-mercury-white-usb.jpg?v=1565802167",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detalhes(
                        nome: "Headset Gamer",
                        preco: 533.74,
                        desc: "Headset Gamer com super qualidade de audio para melhorar desempenho",
                        imagemURl: "https://cdn.dooca.store/47/products/headset-gamer-razer-kraken-71-v2-mercury-white-usb.jpg?v=1565802167",
                        diferencial: "Marca do produto: Razer",
                        onTap: () {},
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 50),
              RoupaWidget(
                material: "Pano",
                nome: "Camiseta",
                preco: 30.00,
                desc: "Camisa legal",
                imagemURl: "https://cordilheira.com.br/cdn/shop/files/5_d67e4ca4-5957-446e-9aec-678826e5ff3b.png?v=1695657096",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detalhes(
                        nome: "Camiseta polo",
                        preco: 30.00,
                        desc: "Camiseta polo super estilosa para eventos formais",
                        imagemURl: "https://cordilheira.com.br/cdn/shop/files/5_d67e4ca4-5957-446e-9aec-678826e5ff3b.png?v=1695657096",
                        diferencial: "Material da camisa: Pano de algodão egipcio",
                        onTap: () {},
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
