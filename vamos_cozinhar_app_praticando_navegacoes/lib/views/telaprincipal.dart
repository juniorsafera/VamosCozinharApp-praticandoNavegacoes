import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vamos Cozinhar?"),
      ),
      body: const Center(
        child: Text("Navegar é preciso!"),
      ),
    );
  }
}