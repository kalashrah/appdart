import 'dart:convert' as co;
import 'package:appdart/model/post.dart';
import 'package:http/http.dart' as http;

class Api {
  String? link, imageSrc, description;

  Api({this.link, this.imageSrc, this.description});

  Api.fromJson(Map<String, dynamic> json) {
    this.link = json['link'];
    this.imageSrc = json['image-src'];
    this.description = json['description'];
  }
}

class fatchApi {
  Future<List<Api>> fatchPosts() async {
    String PostsUrl = 'https://ikalashrah.000webhostapp.com/dartApp/';

    List<Api> posts = [];
    // return http.get(Uri.parse(PostsUrl));
    var response = await http.get(Uri.parse(PostsUrl));

    if (response.statusCode == 200) {
      var body = co.jsonDecode(response.body);
      for (var item in body) {
        posts.add(Api.fromJson(item));
      }
      // print(posts[0].link);
      return posts;
    }

    throw Exception('api Error');
  }
}
