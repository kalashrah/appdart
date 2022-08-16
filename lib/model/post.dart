import 'dart:convert' as co;
import 'package:http/http.dart' as http;

class postsModel {
  List<Posts>? posts;

  postsModel({this.posts});

  postsModel.fromJson(Map<String, dynamic> json) {
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add(new Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.posts != null) {
      data['posts'] = this.posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  String? link;
  String? imageSrc;
  String? description;

  Posts(
      {required this.link, required this.imageSrc, required this.description});

  Posts.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    imageSrc = json['image-src'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    data['image-src'] = this.imageSrc;
    data['description'] = this.description;
    return data;
  }
}

Future<void> getData() async {
  String PostsUrl = 'http://localhost/~macbook/dartapp/';

  // return http.get(Uri.parse(PostsUrl));
  var response = await http.get(Uri.parse(PostsUrl));

  // Post post = Post.fromJsom(co.jsonDecode(response.body));
  var post = co.jsonDecode(response.body);
  postsModel po = postsModel.fromJson(co.jsonDecode(response.body));
  print(po.posts);
  // print(post['posts'][0]['link']);
}
