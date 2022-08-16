import 'package:appdart/widgets/k10spltabbarwidget.dart';
import 'package:flutter/material.dart';
import 'package:appdart/pages/dataTableGdwl.dart';

class newgdwal extends StatefulWidget {
  const newgdwal({Key? key}) : super(key: key);

  @override
  State<newgdwal> createState() => _newgdwalState();
}

class _newgdwalState extends State<newgdwal> {
  var t1 = Tab(
    child: Text(
      'المباريات',
      style: TextStyle(
        fontSize: 20.0,

        fontWeight: FontWeight.w400,
        fontFamily: "Jannat",
        color: Colors.white,

        // fontStyle: FontStyle.
      ),
    ),
  );
  var t2 = Tab(text: 'الترتيب');
  var t3 = Tab(
      child: Text(
    'الترتيب',
    style: TextStyle(
      fontSize: 20.0,

      fontWeight: FontWeight.w400,
      fontFamily: "Jannat",
      color: Colors.white,

      // fontStyle: FontStyle.
    ),
  ));
  @override
  Widget build(BuildContext context) => k10spltabbarwidget(tabs: [
        t1,
        t3,
      ], children: [
        Container(
          width: double.infinity,
          height: 70,
          color: Colors.white,
          margin: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: 80),
              Text(
                "مباريات الجولة  0",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Jannat",
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
        dataTableGdwl()
      ]);
}
