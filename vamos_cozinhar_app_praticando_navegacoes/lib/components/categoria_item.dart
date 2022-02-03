import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/categorias.dart';

class ItemCategoria extends StatelessWidget {
  final ModeloCategoria categoria;
  const ItemCategoria({Key? key, required this.categoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            categoria.cor.withOpacity(0.5),
            categoria.cor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.all(15),
      child: Text(categoria.titulo),
    );
  }
}
