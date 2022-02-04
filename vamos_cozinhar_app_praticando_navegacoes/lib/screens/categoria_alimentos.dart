import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/categorias.dart';

class CategoriaAlimentos extends StatelessWidget {
  const CategoriaAlimentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // argumento da rota
    final mCategoria =
        ModalRoute.of(context)!.settings.arguments as ModeloCategoria;
        //
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
