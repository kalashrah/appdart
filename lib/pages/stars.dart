// import 'dart:html';

import 'package:appdart/pages/starsPages/towVC.dart';
import 'package:appdart/tabcontroller.dart';
import 'package:appdart/pages/gdwal.dart';
import 'package:appdart/pages/starsPages/sortable.dart';
import 'package:appdart/widgets/k10spltabbarwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class stars extends StatefulWidget {
  const stars({Key? key}) : super(key: key);

  @override
  State<stars> createState() => _starsState();
}

class _starsState extends State<stars> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // context.widget.
  }

  var t1 = Tab(text: 'Sortable');
  var t2 = Tab(text: 'Selectable');
  var t3 = Tab(text: 'Editable');
  var t4 = Tab(text: 'Sortable');
  var t5 = Tab(text: 'Selectable');
  var t6 = Tab(text: 'Editable');

  @override
  Widget build(BuildContext context) => k10spltabbarwidget(tabs: [
        t1,
        t2,
        t3,
        t4,
        t5,
        t6,
      ], children: [
        testImageCach(),
        towvc(),
        Container(
          color: Colors.black38,
          width: double.infinity,
          height: 300,
          child: Text('38'),
        ),
        Container(
          color: Colors.black45,
          width: double.infinity,
          height: 300,
          child: Text('45'),
        ),
        Container(
          color: Colors.black54,
          width: double.infinity,
          height: 300,
          child: Text('54'),
        ),
        Container(
          color: Colors.black12,
          width: double.infinity,
          height: 300,
          child: Text('12'),
        ),
      ]);
}
