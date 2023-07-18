// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:nomesapp/src/pages/home/components/button_option_component.dart';

class ListButton extends StatelessWidget {
  final List<String> filterList;
  final List<String> opcoes;
  final Icon icon;

  const ListButton({
    Key? key,
    required this.filterList,
    required this.opcoes,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: opcoes.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 45,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5),
      itemBuilder: (context, index) {
        return ButtonOption(
            filterList: filterList,
            iconButton: icon,
            textButton: opcoes[index]);
      },
    );
  }
}
