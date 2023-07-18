import 'package:hasura_connect/hasura_connect.dart';
import 'package:nomesapp/src/controllers/db-connect_controller.dart';

class DB {
  HasuraConnect conexao = DBConnect.instancia.conexao;

  Future getNameById(int id) async {
    String query = '''
    query getNameById {
      nomes(where: {id: {_eq: $id}}) {
        id
        nome
        origem
        primeira_letra
        tamanho
        tema
        genero
      }
    }
    ''';

    Map data = await conexao.query(query);

    return data;
  }

  Future getByOrigin(List<String> origins) async {
    int indexOrigin = 0;
    String query = '''
    query GetByOrigin {
    ''';
    for (String origin in origins) {
      query += '''
    origem$indexOrigin: nomes(where: {origem: {_eq: "$origin"}}) {
          id
          nome
          origem
          primeira_letra
          tamanho
          tema
          genero
        }
      ''';
      indexOrigin++;
    }
    query += '''}''';
    Map data = await conexao.query(query);

    return data;
  }

  Future getWithFilters(Map<String, List<String>> filtros) async {
    List<String>? origens = filtros['origens'];
    List<String>? tamanhos = filtros['tamanhos'];
    List<String>? temas = filtros['temas'];
    List<String>? generos = filtros['generos'];
    List<String>? primeirasLetras = filtros['primeira_letra'];

    String query = '''
    query MyCustomQuery {
      nomes(where: {
        ''';

    List<String> conditions = [];

    if (origens != null && origens.isNotEmpty) {
      conditions.add('origem: {_in: ${origens.map((e) => '"$e"').toList()}}');
    }

    if (tamanhos != null && tamanhos.isNotEmpty) {
      conditions.add('tamanho: {_in: ${tamanhos.map((e) => '"$e"').toList()}}');
    }

    if (temas != null && temas.isNotEmpty) {
      conditions.add('tema: {_in: ${temas.map((e) => '"$e"').toList()}}');
    }

    if (generos != null && generos.isNotEmpty) {
      conditions.add('genero: {_in: ${generos.map((e) => '"$e"').toList()}}');
    }

    if (primeirasLetras != null && primeirasLetras.isNotEmpty) {
      conditions.add(
          'primeira_letra: {_in: ${primeirasLetras.map((e) => '"$e"').toList()}}');
    }

    query += conditions.join(', ');

    query += '''
      }) {
        id
        nome
        origem
        primeira_letra
        tamanho
        tema
        genero
      }
    }
  ''';

    Map data = await conexao.query(query);

    return data;
  }

  Future getByName(String name) async {
    String query = '''
    query MyQuery {
      nomes(where: {nome: {_eq: "$name"}}) {
        genero
        id
        nome
        origem
        primeira_letra
        tamanho
        tema
      }
    }
    ''';
    Map data = await conexao.query(query);

    return data;
  }
}
