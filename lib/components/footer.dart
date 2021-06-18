import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(200, 96, 94, 199),
      height: 35,
      width: MediaQuery.of(context).size.width,
    );
  }
}
