import 'package:flutter/material.dart';

class ResultadosRepository extends ChangeNotifier {
  Map _resultados = {};

  get resultados => _resultados;

  void setResultados(dynamic res) {
    _resultados = res;

    notifyListeners();
  }
}
