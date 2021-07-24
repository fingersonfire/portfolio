import 'package:flutter/material.dart';

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
