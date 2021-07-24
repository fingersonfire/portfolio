import 'package:portfolio/widgets/index.dart';
import 'package:portfolio/utilities.dart';
import 'package:portfolio/widgets/styled.container.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StyledContainer(
      childWidget: ConditionalWidget(
        condition: isMobile(context),
        trueChild: Column(
          children: [
            HeaderText(text: 'Skills'),
            Technologies(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SoftSkills(),
          ],
        ),
        falseChild: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: HeaderText(text: 'Skills & Technologies'),
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
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
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
      width: isMobile(context) ? MediaQuery.of(context).size.width * .5 : null,
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
      width: isMobile(context) ? MediaQuery.of(context).size.width * .5 : null,
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
