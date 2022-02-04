import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/categorias.dart';

class ItemCategoria extends StatelessWidget {
  final ModeloCategoria mCategoria;
  const ItemCategoria({Key? key, required this.mCategoria}) : super(key: key);

  void _selecionarCategoria(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/categoria-alimentos', arguments: mCategoria);
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
              mCategoria.cor.withOpacity(0.5),
              mCategoria.cor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(15),
        child: Text(mCategoria.titulo),
      ),
    );
  }
}
