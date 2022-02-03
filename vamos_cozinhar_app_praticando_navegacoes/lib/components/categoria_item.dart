import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/categorias.dart';

class ItemCategoria extends StatelessWidget {
  final ModeloCategoria categoria;
  const ItemCategoria({Key? key, required this.categoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Text(categoria.titulo),
    );
  }
}
