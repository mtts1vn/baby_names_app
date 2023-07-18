import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hasura_connect/hasura_connect.dart';

class DBConnect {
  HasuraConnect conexao = HasuraConnect(dotenv.env['APILINK'].toString(),
      headers: {'x-hasura-admin-secret': dotenv.env['APIKEY'].toString()});

  get connection => conexao;

  static DBConnect instancia = DBConnect._();

  DBConnect._();
}
