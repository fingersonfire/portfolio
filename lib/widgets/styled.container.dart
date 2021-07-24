import 'package:flutter/material.dart';

class StyledContainer extends StatelessWidget {
  StyledContainer({
    Key? key,
    this.borderColor = const Color.fromARGB(150, 96, 94, 199),
    required this.childWidget,
    this.margins = 50,
    this.maxWidth = 1000,
    this.padding = 20,
  }) : super(key: key);

  final Color borderColor;
  final Widget childWidget;
  final double margins;
  final double maxWidth;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margins),
      padding: EdgeInsets.all(padding),
      constraints: BoxConstraints(maxWidth: maxWidth),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: borderColor,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        color: Colors.white,
      ),
      child: childWidget,
    );
  }
}
