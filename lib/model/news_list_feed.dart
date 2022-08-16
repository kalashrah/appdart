import 'package:appdart/model/api.dart';
import 'package:appdart/model/news_list_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:appdart/model/webviewvc.dart';

class NewsListFeed extends StatelessWidget {
  const NewsListFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: getListFeedWidget(),
      ),
    );
  }
}

Widget getListFeedWidget() {
  fatchApi fatch = fatchApi();

  return Scaffold(
    body: FutureBuilder(
        future: fatch.fatchPosts(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<Api> posts = snapshot.data!;
            return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return getListFeedClass(
                      link: posts[index].link as String,
                      image: posts[index].imageSrc as String,
                      alt: posts[index].description as String);
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

class getListFeedClass extends StatelessWidget {
  final String link;
  final String image;
  final String alt;

  const getListFeedClass({
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
            height: 130,
            padding: const EdgeInsets.all(0),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 100,
                    width: 50,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: NetworkImage(image)),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    // child: Image(image: NetworkImage(image)),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 14,
                  child: Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          alt,
                          maxLines: 2,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.w400,
                            fontFamily: "Jannat",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '2000/9/9',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF7C7C7C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
