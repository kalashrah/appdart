import 'dart:ffi';
import 'package:appdart/model/api.dart';
import 'package:appdart/pages/newos.dart';
import 'package:appdart/tabcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class containerRow extends StatelessWidget {
  final String bottonString;
  final String headText;
  final double sizeBox;
  // final MaterialPageRoute Controller;
  void onOpen(context) {
    print(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Controller),
    );
  }

  final Controller;
  final VoidCallback onTap;
  // final VoidCallback onOpee;
  const containerRow(
      {Key? key,
      required this.bottonString,
      required this.headText,
      required this.sizeBox,
      // required this.Controller,
      required this.onTap,
      this.Controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.black12,
      child: Row(
        children: <Widget>[
          OutlinedButton(
              onPressed: () => onTap(),
              child: Text(
                bottonString,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Jannat",
                  color: Colors.blue,
                ),
              )),
          SizedBox(width: sizeBox),
          Text(
            headText,
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Jannat",
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
