import 'dart:convert' as co;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class getNewosPhotos {
  String? link;

  getNewosPhotos({this.link});

  getNewosPhotos.fromJson(Map<String, dynamic> json) {
    link = json['link'];

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['link'] = this.link;
      return data;
    }
  }

  List<getNewosPhotos> parsePhotos(String responseBody) {
    var list = co.jsonDecode(responseBody) as List<dynamic>;
    List<getNewosPhotos> photos =
        list.map((model) => getNewosPhotos.fromJson(model)).toList();
    return photos;
  }

  Future<List<getNewosPhotos>> fatchPhotos() async {
    String PostsUrl = 'https://ikalashrah.000webhostapp.com/dartApp/getPhotos/';
    // String PostsUrl = 'http://localhost/~macbook/dartapp/getPhotos/';

    final List<getNewosPhotos> photos = [];
    final response = await http.get(Uri.parse(PostsUrl));

    if (response.statusCode == 200) {
      print(response.statusCode);
      var body = co.jsonDecode(response.body);
      for (var item in body) {
        photos.add(getNewosPhotos.fromJson(item));
      }
      // print(photos.length);
      print(photos);

      setState() {
        print(photos);
      }

      // return photos;
      return compute(parsePhotos, response.body);
    } else {
      throw Exception('Error Api');
    }
  }
}
