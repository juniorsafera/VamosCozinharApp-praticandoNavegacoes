import 'package:flutter/material.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/models/alimentos.dart';
import 'package:vamos_cozinhar_app_praticando_navegacoes/utils/rotas.dart';

class AlimentoItem extends StatelessWidget {
  final ModeloAlimentos mAlimento;
  const AlimentoItem({
    Key? key,
    required this.mAlimento,
  }) : super(key: key);

  void _selecionarAlimento(BuildContext context) {
    Navigator.of(context)
        .pushNamed(Rotas.detalheAlimentos, arguments: mAlimento);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selecionarAlimento(context),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      mAlimento.imagemUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 20,
                    child: Container(
                      width: 250,
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Text(
                        mAlimento.titulo,
                        style:
                            const TextStyle(fontSize: 26, color: Colors.white),
                        softWrap: true, // quebra linha
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.schedule),
                        const SizedBox(
                          width: 6,
                        ),
                        Text('${mAlimento.duracao} min')
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.work),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(mAlimento.complexidadeText)
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.attach_money),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(mAlimento.custotext),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
