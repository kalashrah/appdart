import 'dart:ffi';
// import 'dart:html';

import 'package:appdart/model/api.dart';
import 'package:appdart/pages/newos.dart';
import 'package:appdart/tabcontroller.dart';
import 'package:appdart/widget/customCollecictionView.dart';
import 'package:appdart/widget/customeFlexibleAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:appdart/pages/newos.dart';
import 'package:appdart/pages/newgdwal.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:appdart/widget/containerRow.dart';
import 'package:appdart/widget/bigView.dart';
import 'package:appdart/widget/customeAppbar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final ButtonStyle bstyle =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    fatchApi fatch = fatchApi();
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // floating: true,

            backgroundColor: Color.fromARGB(255, 20, 27, 36),
            pinned: true,
            stretchTriggerOffset: 30.0,
            expandedHeight: 200,
            // title: Image.asset(
            //   'assets/images/centerlogo.png',
            //   height: 80,
            //   width: 80,
            // ),
            centerTitle: true,

            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                // collapseMode: CollapseMode.parallax,
                // stretchModes: [StretchMode.zoomBackground],
                titlePadding: EdgeInsetsDirectional.only(bottom: 15, top: 20),
                title: Image.asset(
                  'assets/images/centerlogo.png',
                  height: 70,
                  width: 70,
                ),
                background: Image.asset(
                  'assets/images/bg.png',
                  fit: BoxFit.fill,
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            containerRow(
              sizeBox: 180,
              bottonString: 'المزيد',
              headText: 'احدث الاخبار',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const newos()),
                );
              },
            ),
            bigView(
              withImage: 'assets/images/102.png',
            ),
            customCollecictionView(),
            containerRow(
              sizeBox: 100,
              bottonString: 'المزيد',
              headText: 'مباريات الجولة الاولى',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const newgdwal()),
                );
              },
            ),
            containerRow(
              sizeBox: 220,
              bottonString: 'المزيد',
              headText: 'الترتيب',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const newgdwal()),
                );
              },
            ),
            Container(
              width: double.maxFinite,
              height: 250,
              color: Colors.white,
            )
          ]))
        ],
      ),
      // appBar: AppBar(
      //   title: Image.asset(
      //     'assets/images/centerlogo.png',
      //     height: 40,
      //     width: 61,
      //   ),
      //   flexibleSpace: Image(
      //     image: AssetImage('assets/images/bg.png'),
      //     fit: BoxFit.cover,
      //   ),
      //   backgroundColor: const Color(0xFF0F1737),
      //   toolbarHeight: 66,
      // ),
      // body: Container(
      //   color: Colors.white,
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         containerRow(
      //           bottonString: 'المزيد',
      //           headText: 'احدث الاخبار',
      //           onTap: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => const newos()),
      //             );
      //           },
      //         ),
      //         bigView(
      //           withImage: 'assets/images/102.png',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
