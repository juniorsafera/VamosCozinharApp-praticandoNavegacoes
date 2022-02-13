import 'package:flutter/material.dart';
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
    // Lista de Tabs para TabController
    List<Tab> _tabs = [
      const Tab(
        icon: Icon(Icons.category),
        text: 'Categorias',
      ),
      const Tab(
        icon: Icon(Icons.star),
        text: 'Favoritos',
      ),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          /*
          Definindo o Titulo da appbar
          e chamando a lista de tabs criada acima
          na tabbar 
          */
          title: const Text('Vamos Cozinhar?'),
          bottom: TabBar(tabs: _tabs),
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
