import 'package:appdart/tabcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/material.dart';

class gdwal extends StatefulWidget {
  const gdwal({Key? key}) : super(key: key);

  @override
  State<gdwal> createState() => _gdwalState();
}

class _gdwalState extends State<gdwal> {
  List images = [
    'splash_bg.png',
    'background.png',
    'stat_bg.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/centerlogo.png',
          height: 40,
          width: 61,
        ),
        flexibleSpace: Image(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: const Color(0xFF0F1737),
        toolbarHeight: 66,
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'new Data',
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
