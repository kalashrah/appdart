import 'dart:convert' as co;
import 'package:http/http.dart' as http;

class postsModnew {
  List<PostsNew>? posts;

  postsModnew({this.posts});

  postsModnew.fromJson(Map<String, dynamic> json) {
    if (json['posts'] != null) {
      posts = <PostsNew>[];
      json['posts'].forEach((v) {
        posts!.add(new PostsNew.fromJson(v));
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

class PostsNew {
  String? link;
  String? imageSrc;
  String? description;

  PostsNew({this.link, this.imageSrc, this.description});

  PostsNew.fromJson(Map<String, dynamic> json) {
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


