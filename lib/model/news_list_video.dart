import 'package:appdart/model/NewosVideo.dart';
import 'package:appdart/model/news_list_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:appdart/model/webviewvc.dart';

class NewosListVideo extends StatelessWidget {
  const NewosListVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewosVideo newVideos = NewosVideo();
    return Scaffold(
      body: FutureBuilder(
          future: fatchVideios(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<NewosVideo> videos = snapshot.data!;
              return ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (context, index) {
                    // print(photos[index].link);
                    return getListVideo(
                        link: videos[index].videoLink as String,
                        image: videos[index].imgLink as String,
                        alt: videos[index].descrioption as String);
                  });
            } else if (snapshot.hasError) {
              return Container(
                child: Center(
                  child: Text('Not Data'),
                ),
              );
            } else {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
    );
  }
}

// Widget getLisVideoWidget() {
//   return ListView.builder(
//       itemCount: listFeed.length,
//       itemBuilder: (context, index) {
//         return getListVideo(
//           link: listFeed[index].link,
//           image: listFeed[index].image,
//           alt: listFeed[index].alt,
//         );
//       });
// }

class getListVideo extends StatelessWidget {
  final String link;
  final String image;
  final String alt;

  const getListVideo({
    Key? key,
    required this.link,
    required this.image,
    required this.alt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: ListTile(
          onTap: () {
            print(link);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => appWebView(url: link)),
            );
          },
          title: Container(
            height: 220,
            padding: const EdgeInsets.all(0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: 100,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: NetworkImage(image)),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    // child: Image(image: NetworkImage(image)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.all(5.0),
    //   child: Card(
    //     child: Image.network(link), //TODO make the edges rounded.
    //   ),
    // );
  }
}
