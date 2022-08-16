import 'dart:convert' as co;

import 'package:appdart/model/postModel.dart';
import 'package:appdart/pages/gdwal.dart';
import 'package:appdart/pages/home.dart';
import 'package:appdart/pages/testHome.dart';
import 'package:appdart/pages/more.dart';
import 'package:appdart/pages/newgdwal.dart';
import 'package:appdart/pages/newos.dart';
import 'package:appdart/pages/stars.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:appdart/model/api.dart';

void gs() {
  String PostsUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<http.Response> getPost() async {
    // return http.get(Uri.parse(PostsUrl));
    http.Response futurePost = await http.get(Uri.parse(PostsUrl));

    if (futurePost.statusCode == 200) {
      print(futurePost.body);
      // return Text('data');
      return futurePost;
    } else {
      throw Exception('_!_');
    }
  }
}

class tabcontroller extends StatefulWidget {
  const tabcontroller({Key? key}) : super(key: key);

  @override
  State<tabcontroller> createState() => _tabcontrollerState();
}

class _tabcontrollerState extends State<tabcontroller> {
  int currentI = 0;

  List pages = [
    home(),
    newgdwal(),
    newos(),
    stars(),
    more(),
    // testhome(),
  ];

  String PostsUrl = 'http://localhost/~macbook/dartapp/';

  // Future<Post> getPost() async {
  //   // return http.get(Uri.parse(PostsUrl));
  //   http.Response futurePost = await http.get(Uri.parse(PostsUrl));

  //   if (futurePost.statusCode == 200) {
  //     // var ff = futurePost;
  //     var ff = co.jsonDecode(futurePost.body);

  //     // print(ff.runtimeType);
  //     // int k = 1;
  //     print('futurePost');
  //     // (type)
  //     // final j = JsonEncoder(futurePost);
  //     // return Post.fromJsom(json);
  //     return Post.fromJsom(co.jsonDecode(futurePost.body));
  //   } else {
  //     throw Exception('_!_');
  //   }
  // }

  // Future<Post> Post postData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchApi fa = fatchApi();
    fa.fatchPosts();
    // fatchApi();

    // getPost();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/images/gdwl.png')),
            label: 'الجدول',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'المركزالاعلامي',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/images/star.png')),
            label: 'الاحصائيات',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/images/more.png')),
            label: 'المزيد',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.more),
          //   label: 'test',
          // ),
        ],
        backgroundColor: Color.fromARGB(255, 20, 27, 36),
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15.0,
        selectedIconTheme: IconThemeData(color: Colors.white, size: 20.0),
        selectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.grey, size: 20.0),
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 15.0,
        currentIndex: currentI,
        onTap: (index) {
          setState(() {
            currentI = index;
            currentIndex:
            pages[index];
          });
        },
      ),
      body: pages[currentI],
    );
    /*
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            title: Text('Home')),
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            title: Text('Home')),
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            title: Text('Home')),
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            title: Text('Home')),
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            title: Text('Home')),
        ],
        backgroundColor: Colors.blueAccent,
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 20.0,
        selectedIconTheme: IconThemeData(color: Colors.white, size: 20.0),
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
         ),
        unselectedFontSize: 20.0,
        unselectedIconTheme: IconThemeData(color: Colors.grey, size: 20.0),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
      ),

    );
    */
  }
}
