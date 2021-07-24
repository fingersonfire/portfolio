import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/bloc/github.controller.dart';

class GithubLink extends StatefulWidget {
  const GithubLink({Key? key, required this.project}) : super(key: key);

  final GithubProject project;

  @override
  _GithubLinkState createState() => _GithubLinkState();
}

class _GithubLinkState extends State<GithubLink> {
  final GithubController c = Get.find();

  Offset boxOffset = Offset(3, 3);
  double blur = 3.0;

  void onTapCancel() {
    setState(() {
      boxOffset = Offset(3, 3);
      blur = 3.0;
    });
  }

  void onTapDown(TapDownDetails details) {
    setState(() {
      boxOffset = Offset(1, 1);
      blur = 1.0;
    });
  }

  void onTapUp(TapUpDetails details) {
    setState(() {
      boxOffset = Offset(3, 3);
      blur = 3.0;
      c.launchUrl(widget.project.url);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {},
      child: GestureDetector(
        onTapCancel: onTapCancel,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          constraints: BoxConstraints(maxWidth: 250),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Color.fromARGB(150, 96, 94, 199),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(150, 96, 94, 199),
                blurRadius: blur,
                offset: boxOffset,
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.project.name,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '[${widget.project.language}]',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Text(widget.project.description),
            ],
          ),
        ),
      ),
    );
  }
}
