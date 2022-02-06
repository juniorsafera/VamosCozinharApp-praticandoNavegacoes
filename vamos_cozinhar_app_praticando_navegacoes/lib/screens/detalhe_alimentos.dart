import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/alimentos.dart';

class DetalheAlimento extends StatelessWidget {
  const DetalheAlimento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final alimento =
        ModalRoute.of(context)!.settings.arguments as ModeloAlimentos;
    return Scaffold(
        appBar: AppBar(
          title: Text(alimento.titulo),
        ),
        body: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(alimento.imagemUrl),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text('Igredientes'),
            ),
            Container(
              width: 300,
              height: 200,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                  itemCount: alimento.igredientes.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          child: Text(alimento.igredientes[index]),
                        ),
                        color: Colors.orangeAccent);
                  }),
            )
          ],
        ));
  }
}
