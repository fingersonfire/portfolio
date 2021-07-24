import 'package:get/get.dart';
import 'package:portfolio/bloc/github.controller.dart';
import 'package:portfolio/components/index.dart';

void main() {
  Get.put(GithubController());
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Stone\'s Portfolio',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            Skills(),
            Projects(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
