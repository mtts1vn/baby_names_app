class Nome {
  String nome, origem, genero, primeiraLetra, tamanho, tema;

  Nome({
    required this.tema,
    required this.nome,
    required this.origem,
    required this.primeiraLetra,
    required this.tamanho,
    required this.genero,
  });

  factory Nome.fromJson(Map json) {
    return Nome(
        tema: json['tema'],
        nome: json['nome'],
        origem: json['origem'],
        primeiraLetra: json['primeira_letra'],
        tamanho: json['tamanho'],
        genero: json['genero']);
  }

  Map toJson(Nome nome) {
    return {
      'tema': tema,
      'nome': nome,
      'origem': origem,
      'primeira_letra': primeiraLetra,
      'tamanho': tamanho,
      'genero': genero
    };
  }
}
