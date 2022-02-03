import 'package:flutter/material.dart';

class ModeloCategoria {
  final String id;
  final String titulo;
  final Color cor;

  const ModeloCategoria({
    required this.id,
    required this.titulo,
    this.cor = Colors.orange,
  });
}
