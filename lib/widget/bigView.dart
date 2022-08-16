import 'dart:ffi';
import 'package:appdart/model/api.dart';
import 'package:appdart/pages/newos.dart';
import 'package:appdart/tabcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class bigView extends StatelessWidget {
  final String withImage;
  const bigView({
    Key? key,
    required this.withImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.maxFinite,
      // color: Colors.red,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        image:
            DecorationImage(fit: BoxFit.contain, image: AssetImage(withImage)),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero),
      ),
    );
  }
}
