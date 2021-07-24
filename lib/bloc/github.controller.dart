import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class GithubController extends GetxController {
  RxList<dynamic> githubProjects = [].obs;

  getProjects() async {
    Uri url = Uri.parse('https://api.github.com/users/StonePack/repos');

    try {
      var response = await http.get(url, headers: <String, String>{
        'Content-Type': 'application/json',
      });

      if (response.statusCode == 200) {
        List<dynamic> parsedResponse = jsonDecode(response.body);
        List<GithubProject> projects =
            parsedResponse.map((e) => GithubProject.fromJson(e)).toList();

        githubProjects.value = projects;
      }
    } catch (e) {
      print(e);
    }
  }

  launchUrl(url) async {
    await canLaunch(url) ? await launch(url) : print('Could not launch $url');
  }
}

class GithubProject {
  final String name;
  final String url;
  final String description;
  final String language;
  final String license;

  GithubProject({
    required this.name,
    required this.url,
    required this.description,
    required this.language,
    required this.license,
  });

  factory GithubProject.fromJson(Map<String, dynamic> json) {
    return GithubProject(
      name: json['name'],
      url: json['html_url'],
      description: json['description'],
      language: json['language'] == 'Dart' ? 'Flutter/Dart' : json['language'],
      license: '${json['license']}',
    );
  }
}
