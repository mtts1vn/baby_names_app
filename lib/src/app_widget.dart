import 'package:flutter/material.dart';
import 'package:nomesapp/src/pages/home/home_page.dart';
import 'package:nomesapp/src/repository/filter_repository.dart';
import 'package:nomesapp/src/repository/resultados_repository.dart';
import 'package:nomesapp/src/styles.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FilterRepositorty>(
          create: (context) => FilterRepositorty(),
        ),
        ChangeNotifierProvider<ResultadosRepository>(
          create: (context) => ResultadosRepository(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Styles.materialTheme,
        home: const HomePage(),
      ),
    );
  }
}
