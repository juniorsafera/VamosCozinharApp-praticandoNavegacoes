class ModeloAlimentos {
  final String id;
  final List<String> categorias;
  final String titulo;
  final String imagemUrl;
  final List<String> igredientes;
  final List<String> passos;
  final int duracao;
  final bool temGlutem;
  final bool temLactose;
  final bool eVegano;
  final bool eVegetariano;
  final Complexidade complexidade;
  final Custo custo;

  const ModeloAlimentos(
      {required this.id,
      required this.categorias,
      required this.titulo,
      required this.imagemUrl,
      required this.igredientes,
      required this.passos,
      required this.duracao,
      required this.temGlutem,
      required this.temLactose,
      required this.eVegano,
      required this.eVegetariano,
      required this.complexidade,
      required this.custo});

  String get complexidadeText {
    switch (complexidade) {
      case Complexidade.simples:
        return 'Simples';
      case Complexidade.facil:
        return 'Fácil';
      case Complexidade.dificil:
        return 'Difícil';
      default:
        return 'Desconhecida';
    }
  }

  String get custotext {
    switch (custo) {
      case Custo.barato:
        return 'Barato';
      case Custo.justo:
        return 'Justo';
      case Custo.caro:
        return 'Caro';
      default:
        return 'Desconhecido';
    }
  }
}

enum Complexidade {
  simples,
  facil,
  dificil,
}

enum Custo {
  barato,
  justo,
  caro,
}
