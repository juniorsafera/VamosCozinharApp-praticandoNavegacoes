import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/categorias.dart';

class CategoriaAlimentos extends StatelessWidget {
  final ModeloCategoria mCategoria;
  const CategoriaAlimentos({
    Key? key,
    required this.mCategoria,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mCategoria.cor,
        title: Text(mCategoria.titulo),
      ),
      body: Center(
        child: Text("Receitas por categoria!  ${mCategoria.id}"),
      ),
    );
  }
}
