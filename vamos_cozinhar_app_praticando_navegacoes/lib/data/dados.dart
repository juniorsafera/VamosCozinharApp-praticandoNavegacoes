import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/categorias.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/alimentos.dart';

// ignore: unnecessary_const, constant_identifier_names
const DADOS_CATEGORIAS = const [
  ModeloCategoria(
    id: 'c1',
    titulo: "Italiano",
    cor: Colors.yellow,
  ),
  ModeloCategoria(
    id: 'c2',
    titulo: "Café da manhã",
    cor: Colors.red,
  ),
  ModeloCategoria(
    id: 'c3',
    titulo: "Saudáveis",
    cor: Colors.purple,
  ),
  ModeloCategoria(
    id: 'c4',
    titulo: "Massas",
    cor: Colors.cyan,
  ),
  ModeloCategoria(
    id: 'c5',
    titulo: "Japonesa",
    cor: Colors.green,
  ),
  ModeloCategoria(
    id: 'c6',
    titulo: "Bebidas",
    cor: Colors.lightBlue,
  ),
  ModeloCategoria(
    id: 'c7',
    titulo: "Doces",
    cor: Colors.amber,
  ),
  ModeloCategoria(
    id: 'c8',
    titulo: "Tira gostos",
  ),
  ModeloCategoria(
    id: 'c9',
    titulo: "Bolos",
  ),
];

const DADOS_ALIMENTOS = [
  ModeloAlimentos(
      id: 'a1',
      categorias: ['c1', 'c2'],
      titulo: "Sopa de tomates",
      imagemUrl: 'imagemUrl',
      igredientes: [
        '4 Tomates',
        '1 colher de sopa de Azeite',
        '250g Quejo muçarela',
        '1pc Macarrão',
      ],
      passos: [
        "Passo 1: ...",
        "Passo 2: ...",
        "Passo 3: ...",
        "Passo 4: ...",
      ],
      duracao: 20,
      temGlutem: false,
      temLactose: false,
      eVegano: true,
      eVegetariano: true,
      complexidade: Complexidade.facil,
      custo: Custo.barato)
];
