// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonOption extends StatefulWidget {
  final List<String> filterList;
  final Icon iconButton;
  final String textButton;
  const ButtonOption({
    Key? key,
    required this.filterList,
    required this.iconButton,
    required this.textButton,
  }) : super(key: key);

  @override
  State<ButtonOption> createState() => _ButtonOptionState();
}

class _ButtonOptionState extends State<ButtonOption> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 25,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
              (widget.filterList.contains(widget.textButton))
                  ? Colors.green
                  : Colors.blue),
        ),
        onPressed: () {
          setState(
            () {
              if (!widget.filterList.contains(widget.textButton)) {
                widget.filterList.add(widget.textButton);
              } else {
                widget.filterList.remove(widget.textButton);
              }
            },
          );
        },
        child: Text(
          widget.textButton,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
