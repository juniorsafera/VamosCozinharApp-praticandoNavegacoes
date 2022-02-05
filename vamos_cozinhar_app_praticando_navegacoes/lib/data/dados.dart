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

// ignore: constant_identifier_names
const List<ModeloAlimentos> DADOS_ALIMENTOS = [
  ModeloAlimentos(
    id: 'a1',
    categorias: ['c1', 'c2'],
    titulo: "Sopa de legumes",
    imagemUrl:
        'https://photo-cdn2.icons8.com/C1JYbXCa5qjRUTfCyr-IxE8iWg_h88GrdUqNUaYD6ew/rs:fit:1606:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvMTc2LzJjOWQx/MzVhLTdhOWEtNDNk/NC04MTVlLTJkMTI0/MzdkMDgwOS5qcGc.jpg',
    igredientes: [
      '4 legumes',
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
    custo: Custo.barato,
  ),
  ModeloAlimentos(
    id: 'a2',
    categorias: ['c1', 'c2'],
    titulo: "Sopa de legumes",
    imagemUrl:
        'https://images.unsplash.com/photo-1572449043416-55f4685c9bb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
    igredientes: [
      '4 legumes',
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
    custo: Custo.barato,
  ),
  ModeloAlimentos(
    id: 'a3',
    categorias: ['c3', 'c4'],
    titulo: "Macarronada",
    imagemUrl:
        'https://images.unsplash.com/photo-1592312406345-c6f552c9619f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3BhZ2hldHRpfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=700&q=60',
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
    custo: Custo.barato,
  ),
  ModeloAlimentos(
    id: 'a4',
    categorias: ['c2', 'c3'],
    titulo: "sanduiche natural com ovo, manteiga e cereais",
    imagemUrl:
        'https://images.unsplash.com/photo-1525351484163-7529414344d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvb2R8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60',
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
    custo: Custo.barato,
  ),
  ModeloAlimentos(
    id: 'a4',
    categorias: ['c9', 'c7'],
    titulo: "Bolo Confeitado",
    imagemUrl:
        'https://images.unsplash.com/photo-1464349095431-e9a21285b5f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FrZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=700&q=60',
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
    custo: Custo.barato,
  ),
];
