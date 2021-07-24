import 'package:portfolio/widgets/index.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(200, 96, 94, 199),
      height: 35,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FooterLink(
            image: 'lib/assets/github.png',
            url: 'https://github.com/StonePack',
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FooterLink(
              image: 'lib/assets/linkedin.png',
              url: 'https://www.linkedin.com/in/stone-pack',
            ),
          ),
        ],
      ),
    );
  }
}
