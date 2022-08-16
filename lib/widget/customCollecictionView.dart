import 'dart:ffi';
import 'package:appdart/model/api.dart';
import 'package:appdart/pages/newos.dart';
import 'package:appdart/tabcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:appdart/model/api.dart';
import 'package:cached_network_image/cached_network_image.dart';

class customCollecictionView extends StatelessWidget {
  const customCollecictionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    fatchApi fatch = fatchApi();

    return Container(
      height: 170,
      width: double.maxFinite,
      color: Colors.white,
      child: FutureBuilder(
          future: fatch.fatchPosts(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<Api> posts = snapshot.data!;
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            // border: Border.all(
                            //     color: Colors.black87,
                            //     width: 1.0),
                          ),
                          width: 180,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Material(
                                  // color: Colors.amber,
                                  child: Container(
                                    height: 160,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0))),
                                    child: Column(
                                      children: [
                                        Container(
                                          // color: Colors.amber,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(posts[index]
                                                    .imageSrc as String)),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(12.0),
                                                topRight: Radius.circular(12.0),
                                                bottomLeft: Radius.zero,
                                                bottomRight: Radius.zero),
                                          ),
                                        ),
                                        Container(
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.zero,
                                                topRight: Radius.zero,
                                                bottomLeft:
                                                    Radius.circular(12.0),
                                                bottomRight:
                                                    Radius.circular(12.0)),
                                          ),
                                          child: Text(
                                            posts[index].description as String,
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Jannat",
                                              color: Colors.black87,
                                            ),
                                            textAlign: TextAlign.center,
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  });
            } else if (snapshot.hasError) {
              print(snapshot.error);
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
