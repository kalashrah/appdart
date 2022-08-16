import 'package:appdart/model/news_list_feed.dart';
import 'package:appdart/model/news_list_media.dart';
import 'package:appdart/model/news_list_video.dart';
import 'package:appdart/widgets/k10spltabbarwidget.dart';
import 'package:flutter/material.dart';

class newos extends StatefulWidget {
  const newos({Key? key}) : super(key: key);

  @override
  State<newos> createState() => _newosState();
}

class _newosState extends State<newos> {
  var tNewos = Tab(
    child: Text(
      'الاخبار',
      style: TextStyle(
        fontSize: 20.0,

        fontWeight: FontWeight.w400,
        fontFamily: "Jannat",
        color: Colors.white,

        // fontStyle: FontStyle.
      ),
    ),
  );
  var tPhotos = Tab(
    child: Text(
      'صور',
      style: TextStyle(
        fontSize: 20.0,

        fontWeight: FontWeight.w400,
        fontFamily: "Jannat",
        color: Colors.white,

        // fontStyle: FontStyle.
      ),
    ),
  );
  var tVideo = Tab(
    child: Text(
      'فديو',
      style: TextStyle(
        fontSize: 20.0,

        fontWeight: FontWeight.w400,
        fontFamily: "Jannat",
        color: Colors.white,

        // fontStyle: FontStyle.
      ),
    ),
  );
  var tTwittes = Tab(
    child: Text(
      'تغريدات',
      style: TextStyle(
        fontSize: 18.0,

        fontWeight: FontWeight.w400,
        fontFamily: "Jannat",
        color: Colors.white,

        // fontStyle: FontStyle.
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => k10spltabbarwidget(tabs: [
        tNewos,
        tPhotos,
        tVideo,
        tTwittes
      ], children: [
        NewsListFeed(),
        // Container(
        //   color: Colors.black26,
        //   width: double.infinity,
        //   height: 300,
        //   child: Text('26'),
        // ),
        NewsListMedia(),
        NewosListVideo(),
        Container(
          color: Colors.black26,
          width: double.infinity,
          height: 300,
          child: Text('26'),
        ),
      ]);
}
