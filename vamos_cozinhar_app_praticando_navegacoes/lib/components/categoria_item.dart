import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/categorias.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/screens/categoria_alimentos.dart';

class ItemCategoria extends StatelessWidget {
  final ModeloCategoria categoria;
  const ItemCategoria({Key? key, required this.categoria}) : super(key: key);

  void _selecionarCategoria(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return CategoriaAlimentos(
        mCategoria: categoria,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return InkWell(
      onTap: () => _selecionarCategoria(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              categoria.cor.withOpacity(0.5),
              categoria.cor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(15),
        child: Text(categoria.titulo),
      ),
    );
  }
}
