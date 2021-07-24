import 'package:get/get.dart';
import 'package:portfolio/bloc/github.controller.dart';
import 'package:portfolio/widgets/index.dart';
import 'package:portfolio/utilities.dart';

class Projects extends StatelessWidget {
  final GithubController c = Get.find();

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 75;
    final double itemWidth = MediaQuery.of(context).size.width * .25;
    c.getProjects();
    return Obx(
      () => Column(
        children: [
          HeaderText(text: 'My Projects'),
          Container(
            width: MediaQuery.of(context).size.width * .25,
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          ConditionalWidget(
            condition: isMobile(context),
            trueChild: Column(
              children: List.generate(c.githubProjects.length, (i) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  margin: EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 10,
                  ),
                  child: GithubLink(project: c.githubProjects[i]),
                );
              }),
            ),
            falseChild: GridView.count(
              padding: EdgeInsets.all(20),
              crossAxisCount: 2,
              childAspectRatio: (itemWidth / itemHeight),
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(c.githubProjects.length, (i) {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: GithubLink(project: c.githubProjects[i]),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
