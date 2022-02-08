import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/screens/categoria_alimentos.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/screens/favorito.dart';

import 'lista_categorias.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vamos Cozinhar?'),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: 'Categorias',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favoritos',
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
              ListaCategorias(),
              Favoritos(),
          ],
        ),
      ),
    );
  }
}
