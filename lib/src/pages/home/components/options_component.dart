import 'package:flutter/material.dart';
import 'package:nomesapp/src/pages/home/components/listbutton_component.dart';
import 'package:nomesapp/src/repository/filter_repository.dart';
import 'package:provider/provider.dart';

class OptionsFilter extends StatelessWidget {
  const OptionsFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: const Text('Origem'),
          children: [
            ListButton(
              filterList: Provider.of<FilterRepositorty>(context, listen: false)
                  .origens,
              opcoes: const <String>[
                'Latina',
                'Hebraica',
                'Italiana',
                'Germânica',
                'Grega',
                'Espanhola',
                'Celta',
                'Indígena',
                'Árabe',
                'Egípcia'
              ],
              icon: const Icon(Icons.map),
            )
          ],
        ),
        ExpansionTile(
          title: const Text('Tema'),
          children: [
            ListButton(
              filterList:
                  Provider.of<FilterRepositorty>(context, listen: false).temas,
              opcoes: const <String>[
                'Luminoso',
                'Forte',
                'Clássico',
                'Bíblico',
                'Romântico',
                'Imponente',
                'Doce',
                'Popular',
                'Anjo',
                'Nobre',
                'Marítimo',
                'Poderoso',
                'Misterioso',
                'Arte',
                'Egípcia',
                'Composto',
                'Tradicional',
                'Exótico',
                'Mística'
              ],
              icon: const Icon(Icons.map),
            )
          ],
        ),
        ExpansionTile(
          title: const Text('Tamanho'),
          children: [
            ListButton(
              filterList: Provider.of<FilterRepositorty>(context, listen: false)
                  .tamanho,
              opcoes: const <String>[
                'Grande',
                'Pequeno',
              ],
              icon: const Icon(Icons.map),
            )
          ],
        ),
        ExpansionTile(
          title: const Text('Primeira Letra'),
          children: [
            ListButton(
              filterList: Provider.of<FilterRepositorty>(context, listen: false)
                  .primeiraLetra,
              opcoes: const <String>[
                'A',
                'B',
                'C',
                'D',
                'E',
                'F',
                'G',
                'H',
                'I',
                'J',
                'L',
                'M',
                'N',
                'O',
                'P',
                'R',
                'S',
                'T',
                'V',
                'Y',
              ],
              icon: const Icon(Icons.map),
            )
          ],
        ),
        ExpansionTile(
          title: const Text('Gênero'),
          children: [
            ListButton(
              filterList: Provider.of<FilterRepositorty>(context, listen: false)
                  .generos,
              opcoes: const <String>[
                'Masculino',
                'Feminino',
              ],
              icon: const Icon(Icons.map),
            )
          ],
        ),
      ],
    );
  }
}
