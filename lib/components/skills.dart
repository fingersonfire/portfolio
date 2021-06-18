import 'package:flutter/material.dart';
import 'package:portfolio/widgets.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 1000),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color.fromARGB(150, 96, 94, 199),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(150, 96, 94, 199),
            blurRadius: 5.0,
            offset: Offset(5, 5),
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        color: Colors.white,
      ),
      child: ConditionalWidget(
        condition: isMobile(context),
        trueChild: Column(
          children: [
            Text(
              'Skills',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            Technologies(),
            Container(
              child: Divider(),
            ),
            SoftSkills(),
          ],
        ),
        falseChild: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                'Skills & Technologies',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Technologies(),
                  Container(
                    constraints: BoxConstraints(maxWidth: 300),
                    width: MediaQuery.of(context).size.width / 10,
                    height: 150,
                    child: VerticalDivider(),
                  ),
                  SoftSkills(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Technologies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: BulletList(
        items: [
          'Dart / Flutter',
          'JavaScript / NodeJS',
          'REST APIs',
          'MySQL / GraphQL',
          'C# / .NET',
        ],
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}

class SoftSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: BulletList(
        items: [
          'Team Leadership',
          'Cross Platform Development',
          'System Design',
          'Technical Documentation',
        ],
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
