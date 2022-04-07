import 'package:flutter/material.dart';

class InputRadio extends StatelessWidget {
  final String controller;
  final id;
  final EdgeInsets padding;
  final Function(dynamic newValue) onChanged;
  final Widget child;
  const InputRadio({
    Key? key,
    this.padding = const EdgeInsets.all(10),
    required this.id,
    required this.controller,
    required this.onChanged,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      contentPadding: padding,
      dense: true,
      tileColor: Theme.of(context).colorScheme.background,
      title: child,
      value: id,
      groupValue: controller,
      onChanged: onChanged,
    );
  }
}
