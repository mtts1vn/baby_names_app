import 'package:flutter/material.dart';
import 'package:nomesapp/src/repository/resultados_repository.dart';
import 'package:provider/provider.dart';

class ConsumerList extends StatelessWidget {
  const ConsumerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ResultadosRepository>(
      builder: (context, value, child) {
        if (value.resultados.length == 0) {
          return const Text('Sem Resultados');
        }
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: value.resultados['data']['nomes'].length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(value.resultados['data']['nomes'][index]['nome']),
                ),
                Expanded(
                  flex: 1,
                  child:
                      Text(value.resultados['data']['nomes'][index]['genero']),
                ),
                Expanded(
                  flex: 1,
                  child: Text(value.resultados['data']['nomes'][index]['tema']),
                ),
                Expanded(
                  flex: 1,
                  child:
                      Text(value.resultados['data']['nomes'][index]['origem']),
                ),
                Expanded(
                  flex: 1,
                  child:
                      Text(value.resultados['data']['nomes'][index]['tamanho']),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
