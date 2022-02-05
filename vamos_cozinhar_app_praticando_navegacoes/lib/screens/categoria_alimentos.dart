import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/components/alimento_item.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/data/dados.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/categorias.dart';

class CategoriaAlimentos extends StatelessWidget {
  const CategoriaAlimentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // argumento da rota
    final mCategoria =
        ModalRoute.of(context)!.settings.arguments as ModeloCategoria;
    //
    final categoriaAlimentos = DADOS_ALIMENTOS.where((alimento) {
      return alimento.categorias.contains(mCategoria.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mCategoria.cor,
        title: Text(mCategoria.titulo),
      ),
      body: ListView.builder(
          itemCount: categoriaAlimentos.length,
          itemBuilder: (context, index) {
            return AlimentoItem(mAlimento: categoriaAlimentos[index]);
          }),
    );
  }
}
