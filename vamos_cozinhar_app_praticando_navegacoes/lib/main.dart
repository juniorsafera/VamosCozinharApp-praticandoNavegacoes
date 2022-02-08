import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/screens/categoria_alimentos.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/screens/detalhe_alimentos.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/screens/tabs.dart';
import 'utils/rotas.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      // ignore: prefer_const_constructors
      Rotas.home: (context) => Tabs(),
      // ignore: prefer_const_constructors
      Rotas.categoriaAlimentos: (context) => CategoriaAlimentos(),
      // ignore: prefer_const_constructors
      Rotas.detalheAlimentos: (context) => DetalheAlimento(),
    },
  ));
}
