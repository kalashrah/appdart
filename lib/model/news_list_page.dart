import 'package:flutter/material.dart';
import 'package:appdart/model/news_list_media.dart';
import 'package:appdart/model/news_list_feed.dart';
// import 'package:dartapp/model/news_list_page.dart';
import 'dart:ui';

class NewsListPage extends StatelessWidget {
  // final NewsModel newsList;, required this.newsList
  const NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // flexibleSpace: AssetImage('assets/images/NewsCels.png'),
          title: Image.asset(
            'assets/images/bigIcon.png',
            height: 40,
            width: 61,
          ),
          backgroundColor: const Color(0xFF0F1737),
          toolbarHeight: 66,
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'الاخبار'),
              Tab(text: 'الصور'),
              Tab(text: 'الفيديوهات'),
            ],
          ),
        ),
        //bottomNavigationBar: const BottomBarWidget(),
        body: TabBarView(
          children: [
            const NewsListFeed(),
            // NewsListMedia(pics: const [
            //   'https://dev.spl.sa/sites/default/files/2021-10/2523466-2120294578.jpg',
            //   'https://dev.spl.sa/sites/default/files/2021-09/IMG_20210228_004916_372_0.jpg',
            //   'https://dev.spl.sa/sites/default/files/2021-10/D585DF2D-0D27-43FC-83AF-F01C35DAFD76.jpeg',
            //   'https://dev.spl.sa/sites/default/files/2021-10/840F3260-C5F7-4796-BE4B-272BA813891D.jpeg',
            //   'https://dev.spl.sa/sites/default/files/2021-10/5A450835-F9D0-497D-B394-E1EA31F747EF.jpeg',
            //   'https://dev.spl.sa/sites/default/files/2021-10/A6C20159-1930-4104-B4D3-A81BB94B840E.jpeg'
            // ]),
            NewsListMedia(),
            // NewsListMedia(pics: const [
            //   'https://dev.spl.sa/sites/default/files/2021-10/2523466-2120294578.jpg',
            //   'https://dev.spl.sa/sites/default/files/2021-09/IMG_20210228_004916_372_0.jpg',
            //   'https://dev.spl.sa/sites/default/files/2021-10/D585DF2D-0D27-43FC-83AF-F01C35DAFD76.jpeg',
            //   'https://dev.spl.sa/sites/default/files/2021-10/840F3260-C5F7-4796-BE4B-272BA813891D.jpeg',
            //   'https://dev.spl.sa/sites/default/files/2021-10/5A450835-F9D0-497D-B394-E1EA31F747EF.jpeg',
            //   'https://dev.spl.sa/sites/default/files/2021-10/A6C20159-1930-4104-B4D3-A81BB94B840E.jpeg'
            // ]),
          ],
        ),
      ),
    );
  }
}

class FeedLinks {
  String link;
  String image;
  String alt;
  // final Image timg;
  FeedLinks({required this.link, required this.image, required this.alt});
}
