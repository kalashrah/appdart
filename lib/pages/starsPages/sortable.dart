import 'dart:ffi';

import 'package:appdart/model/news_list_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert' as co;
import 'package:http/http.dart' as http;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:appdart/model/getNewosPhotos.dart';
import 'dart:async';

class testImageCach extends StatefulWidget {
  const testImageCach({Key? key}) : super(key: key);

  @override
  State<testImageCach> createState() => _testImageCachState();
}

class _testImageCachState extends State<testImageCach> {
  @override
  getNewosPhotos gnf = new getNewosPhotos();

  void initState() {
    // var data = myData();
    // var data = myData();
    // // var exitsData = Stream.fromIterable(data)
    // print(data);
    var data = myData();
    // var exitsData = Stream.fromIterable(data)
    print(data);
    super.initState();
  }

  Widget build(BuildContext context) {
    String imageSrc;

    // initState() {
    //   // TODO: implement initState
    //   // newPtype();
    //   super.initState();
    // }

    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height: 250, width: 250, child: Container()

              // Image(
              //   image: AssetImage('assets/images/Al-Nassr.png'),
              //   // color: Colors.blueGrey,
              //   width: 150,
              //   height: 150,
              // ),
              // color: Colors.red,
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         fit: BoxFit.contain,
              //         image: AssetImage('assets/images/Al-Nassr.png')
              //     borderRadius: BorderRadius.all(Radius.circular(12.0)
              //     )
              //     ),
              ),
        ],
      ),
    );
  }
}

//  Image? imgData;
// void newPtype() async {
//   var data = await myData();
//   print(co.jsonDecode(data));
// }

String? im;
String getRImage() {
  String? i = '_!_';

  return i;
}

/*
Future fPhoto() async {
  getNewosPhotos newsPhoto = getNewosPhotos();
  return Future((AsyncSnapshot snapshot) => data,da)
  (
        future: newsPhoto.fatchPhotos(),
        initialData: (context, AsyncSnapshot snapshot) {
      if (snapshot.hasData) {

            // List<Api> posts = snapshot.data!;
            // return ListView.builder(
            //     itemCount: posts.length,
            //     itemBuilder: (context, index) {
            //       return getListFeedClass(
            //           link: posts[index].link as String,
            //           image: posts[index].imageSrc as String,
            //           alt: posts[index].description as String);
            //     });
          } else if (snapshot.hasError) {

            /*
            return Container(
              child: Center(
                child: Text('Not Data'),
              ),
              
            );
            */
          } else {
            /*
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
            */
          }
    },
  );
  
}
*/
String? li;

List<getNewosPhotos> photos = [];

Future<List<getNewosPhotos>> myData() async {
  String PostsUrl = 'https://ikalashrah.000webhostapp.com/dartApp/getPhotos/';
  // String PostsUrl = 'http://localhost/~macbook/dartapp/getPhotos/';

  http.Response data = await http.get(Uri.parse(PostsUrl));
  var body = co.jsonDecode(data.body);

  for (var item in body) {
    photos.add(getNewosPhotos.fromJson(item));
  }
  return photos;
  // return compute(parsePhotos, response.body);
  // String link = body[0]
  // return '';
}
// ui.Image? im;
// ui.Image getRImage() {
//   var i = im;
//   return i!;
// }
// Future<ui.Image> getImageCacheLink() async {
//   final String cachDataImage;

//   String PostsUrl = 'https://ikalashrah.000webhostapp.com/dartApp/getPhotos/';

//   imgData = new Image;
//   var response = await http.get(Uri.parse(PostsUrl));
// // return '';
//   return '';
// }
  
  

  // if (response.statusCode == 200) {
  //   var body = co.jsonDecode(response.body);

  //   // images

  //   // cachDataImage = Image(image: cachImage);
  //   // print(cachImage);
  // } else {
  //   print("Error");
  // }
  // return cachDataImage;
  // Post post = Post.fromJsom(co.jsonDecode(response.body));

  // postsModel po = postsModel.fromJson(co.jsonDecode(response.body));
  // print(po.posts);
// }
// class sortableVC extends StatelessWidget {
  
//   const sortableVC({ Key? key})  :super(key: key);
  
//   @override
//   State<sortableVC> createState() => _sortableVCState();
// }

// class _sortableVCState extends State<sortableVC> {
//    sortableVC
//  final String imageSrc;
//   @override
//   void initState() {
    
//     // TODO: implement initState
//     initKhneeth();
//     super.initState();
//   }

//   void initKhneeth() async {
//     imageSrc = await getImageCache();
//     print('#' * 30);
//     print(imageSrc);
//     print('#' * 30);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.maxFinite,
//       height: double.maxFinite,
//       color: Colors.blue,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//               height: 250,
//               width: 250,
//               child: CachedNetworkImage(
//                 imageUrl: imageSrc as String,
//                 width: 150,
//                 height: 150,
//                 progressIndicatorBuilder: (context, url, downloadProgress) =>
//                     CircularProgressIndicator(value: downloadProgress.progress),
//                 // placeholder: (context, url) => CircularProgressIndicator(),
//                 errorWidget: (context, url, error) => Icon(Icons.error),
//               )

//               // Image(
//               //   image: AssetImage('assets/images/Al-Nassr.png'),
//               //   // color: Colors.blueGrey,
//               //   width: 150,
//               //   height: 150,
//               // ),
//               // color: Colors.red,
//               // decoration: BoxDecoration(
//               //     image: DecorationImage(
//               //         fit: BoxFit.contain,
//               //         image: AssetImage('assets/images/Al-Nassr.png')
//               //         ),
//               //     borderRadius: BorderRadius.all(Radius.circular(12.0)
//               //     )
//               //     ),
//               ),
//         ],
//       ),
//     );
//   }
// }

// var cachDataImage = Image;

/*
CachedNetworkImage(
                  imageUrl: '',
                  imageBuilder: (context, imageProvider) => ,
                  width: 150,
                  height: 150,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(value: downloadProgress.progress),
                  // placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                */