import 'package:flutter/material.dart';

class k10spltabbarwidget extends StatelessWidget {
  final List<Tab> tabs;
  final List<Widget> children;

  const k10spltabbarwidget({
    Key? key,
    // required this.title,
    required this.tabs,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: tabs.length,
        child: Scaffold(
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
            centerTitle: true,
            bottom: TabBar(
              isScrollable: false,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: tabs,
              // labelColor: Colors.white,
              labelStyle: TextStyle(
                fontSize: 20.0,
              ),
            ),
            // elevation: 20,
            // titleSpacing: 20,
          ),
          body: TabBarView(children: children),
        ),
      );
}
