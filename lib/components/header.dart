import 'package:portfolio/widgets/index.dart';
import 'package:portfolio/utilities.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final headerHeight = MediaQuery.of(context).size.height - 250;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: headerHeight,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Image.asset(
              'lib/assets/codeImage.jpg',
              width: MediaQuery.of(context).size.width,
              height: headerHeight,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Profile(
          height: headerHeight,
        ),
      ],
    );
  }
}

class Profile extends StatelessWidget {
  Profile({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return ConditionalWidget(
      condition: isMobile(context),
      trueChild: Align(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: height * .75,
          color: Color.fromARGB(150, 96, 94, 199),
          child: Info(),
        ),
      ),
      falseChild: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 350,
          height: height,
          margin:
              EdgeInsets.only(right: MediaQuery.of(context).size.width / 10),
          color: Color.fromARGB(150, 96, 94, 199),
          child: Info(),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'lib/assets/profile.png',
          width: 250,
          height: 250,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Stone Pack',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Red Hat Display',
              fontSize: 36,
            ),
          ),
        ),
        Text(
          'Cross platform Flutter and backend JavaScript developer.',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Red Hat Display',
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
