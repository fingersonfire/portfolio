import 'package:flutter/material.dart';

class ConditionalWidget extends StatelessWidget {
  ConditionalWidget({
    Key? key,
    required this.condition,
    required this.trueChild,
    required this.falseChild,
  }) : super(key: key);

  final bool condition;
  final Widget trueChild;
  final Widget falseChild;

  @override
  Widget build(BuildContext context) {
    return condition ? trueChild : falseChild;
  }
}
