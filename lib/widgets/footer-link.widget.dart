import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/bloc/github.controller.dart';

class FooterLink extends StatelessWidget {
  FooterLink({
    Key? key,
    required this.image,
    required this.url,
  }) : super(key: key);

  final String image;
  final String url;

  final GithubController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: GestureDetector(
        onTapUp: (TapUpDetails details) {
          c.launchUrl(url);
        },
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
