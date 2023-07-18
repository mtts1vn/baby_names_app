import 'package:flutter/material.dart';

import 'package:nomesapp/src/controllers/db_controller.dart';
import 'package:nomesapp/src/pages/home/components/consumer_list_component.dart';
import 'package:nomesapp/src/pages/home/components/options_component.dart';
import 'package:nomesapp/src/repository/filter_repository.dart';
import 'package:nomesapp/src/repository/resultados_repository.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const OptionsFilter(),
                ElevatedButton(
                  onPressed: () async {
                    var data = await DB().getWithFilters(
                      {
                        'origens': Provider.of<FilterRepositorty>(context,
                                listen: false)
                            .origens,
                        'tamanhos': Provider.of<FilterRepositorty>(context,
                                listen: false)
                            .tamanho,
                        'temas': Provider.of<FilterRepositorty>(context,
                                listen: false)
                            .temas,
                        'generos': Provider.of<FilterRepositorty>(context,
                                listen: false)
                            .generos,
                        'primeira_letra': Provider.of<FilterRepositorty>(
                                context,
                                listen: false)
                            .primeiraLetra,
                      },
                    );
                    Provider.of<ResultadosRepository>(context, listen: false)
                        .setResultados(data);
                  },
                  child: const Text('Resultados'),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ConsumerList()],
            ),
          ),
        ),
      ),
    );
  }
}
