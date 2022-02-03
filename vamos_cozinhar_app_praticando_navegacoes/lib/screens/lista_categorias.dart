import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/components/categoria_item.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/data/dados.dart';

class ListaCategorias extends StatelessWidget {
  const ListaCategorias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children:
          DADOS_CATEGORIAS.map((e) => ItemCategoria(categoria: e)).toList(),
    );
  }
}
