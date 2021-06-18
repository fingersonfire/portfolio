import 'package:flutter/material.dart';

conditionalProperty(condition, trueProp, falseProp) {
  return condition ? trueProp : falseProp;
}

bool isMobile(context) {
  return MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;
}

class BulletList extends StatelessWidget {
  const BulletList({Key? key, required this.items, required this.style})
      : super(key: key);

  final List<String> items;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(items.length, (index) {
        final String text = items[index];
        return Text(
          '\u2022 $text',
          style: style,
        );
      }),
    );
  }
}

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
