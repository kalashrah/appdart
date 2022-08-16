import 'dart:convert' as co;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NewosVideo {
  String? videoLink;
  String? imgLink;
  String? descrioption;

  NewosVideo({this.videoLink, this.imgLink, this.descrioption});

  NewosVideo.fromJson(Map<String, dynamic> json) {
    videoLink = json['videoLink'];
    imgLink = json['imgLink'];
    descrioption = json['descrioption'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoLink'] = this.videoLink;
    data['imgLink'] = this.imgLink;
    data['descrioption'] = this.descrioption;
    return data;
  }
}

List<NewosVideo> parseVideos(String responseBody) {
  var list = co.jsonDecode(responseBody) as List<dynamic>;
  List<NewosVideo> photos =
      list.map((model) => NewosVideo.fromJson(model)).toList();
  return photos;
}

Future<List<NewosVideo>> fatchVideios() async {
  String PostsUrl = 'https://ikalashrah.000webhostapp.com/dartApp/getVideos/';

  List<NewosVideo> videos = [];
  final response = await http.get(Uri.parse(PostsUrl));

  if (response.statusCode == 200) {
    print(response.statusCode);
    var body = co.jsonDecode(response.body);
    for (var item in body) {
      videos.add(NewosVideo.fromJson(item));
    }
    return videos;
    // return compute(parsePhotos, response.body);
  } else {
    throw Exception('Error Api');
  }
  // List<getNewosPhotos> posts = [];
  // return http.get(Uri.parse(PostsUrl));
  // var response = await http.get(Uri.parse(PostsUrl));
}
