import 'dart:ui';

import 'package:appdart/tabcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:appdart/widgets/k10coustomecell.dart';
import 'package:appdart/pages/newos.dart';

class more extends StatefulWidget {
  const more({Key? key}) : super(key: key);

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Color.fromRGBO(0, 13, 81, 1),
          title: null,
          /*title: Image.asset(
            'assets/images/logo-new.png',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          */
          centerTitle: true,
          flexibleSpace: Positioned(
            child: Container(
              height: 150,
              margin: EdgeInsets.fromLTRB(100, 70, 100, 0.0),
              // color: Colors.white,
              child: Image.asset(
                'assets/images/logo-new.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(200),
      ),
      body: Container(
        color: Color.fromRGBO(0, 13, 81, 1),
        child: getBody(),
      ),

      /*
      body: Container(
        color: Color.fromRGBO(49, 32, 134, 1),
        child: ListView(children: [
          k10CustomeCell(),
          k10CustomeCell(),
          k10CustomeCell(),
          k10CustomeCell(),
        ]),
      ),
      */
      /*
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 40, 67),
        title: Image.asset(
          'assets/images/logo-new.png',
          height: 100,
          width: 100,
        ),
        flexibleSpace: Container(
          height: double.infinity,
          width: 300,
          color: Colors.white,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          // child: SizedBox(height: 200),
        ),
      ),
      */
    );
  }

  Widget getBody() {
    List<Todo> _todos = [
      Todo(
          title: 'دليل الاندية',
          clr: Colors.redAccent,
          link: 'https://www.spl.sa/ar/About-us'),
      Todo(title: 'من نحن', clr: Colors.lightGreen, link: ''),
      Todo(title: 'اتصل بنا', clr: Colors.lightBlue, link: ''),
      Todo(title: 'طابق التشريك', clr: Colors.orangeAccent, link: ''),
    ];

    return ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return getNewCard(
            title: _todos[index].title,
            clr: _todos[index].clr,
          );
        });
  }
}

class getNewCard extends StatelessWidget {
  final String title;
  // final String clr;
  final Color clr;

  const getNewCard({
    Key? key,
    required this.title,
    required this.clr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(0, 13, 81, 0.5),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 25.0,

                fontWeight: FontWeight.w400,
                fontFamily: "Jannat",
                color: Colors.white,

                // fontStyle: FontStyle.
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 50,
              height: 35,
              // padding: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: clr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Todo {
  String title;
  String link;

  Color clr;

  Todo({
    required this.title,
    required this.link,
    required this.clr,
  });
}
