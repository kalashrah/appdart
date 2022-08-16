import 'package:appdart/model/getNewosPhotos.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsListMedia extends StatelessWidget {
  List<String> pics = [
    'https://dev.spl.sa/sites/default/files/2021-10/2523466-2120294578.jpg',
    'https://dev.spl.sa/sites/default/files/2021-09/IMG_20210228_004916_372_0.jpg',
    'https://dev.spl.sa/sites/default/files/2021-10/D585DF2D-0D27-43FC-83AF-F01C35DAFD76.jpeg',
    'https://dev.spl.sa/sites/default/files/2021-10/840F3260-C5F7-4796-BE4B-272BA813891D.jpeg',
    'https://dev.spl.sa/sites/default/files/2021-10/5A450835-F9D0-497D-B394-E1EA31F747EF.jpeg',
    'https://dev.spl.sa/sites/default/files/2021-10/A6C20159-1930-4104-B4D3-A81BB94B840E.jpeg'
  ];
  NewsListMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getNewosPhotos newsPhoto = getNewosPhotos();
    return Scaffold(
      body: FutureBuilder(
          future: newsPhoto.fatchPhotos(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<getNewosPhotos> photos = snapshot.data!;
              return ListView.builder(
                  itemCount: photos.length,
                  itemBuilder: (context, index) {
                    // print(photos[index].link);
                    return getListMideaClass(
                        link: photos[index].link as String);
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

class getListMideaClass extends StatelessWidget {
  final String link;
  // final Image image;
  // final String alt;

  const getListMideaClass({
    Key? key,
    required this.link,
    // required this.image,
    // required this.alt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: ListTile(
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
                            fit: BoxFit.fill, image: NetworkImage(link)),
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
