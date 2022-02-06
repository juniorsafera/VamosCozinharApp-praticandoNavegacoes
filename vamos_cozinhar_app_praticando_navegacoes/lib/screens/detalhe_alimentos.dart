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
      body: const Center(
        child: Text('Detalhe alimento!'),
      ),
    );
  }
}
