import 'package:flutter/material.dart';

class k10CustomeCell extends StatelessWidget {
  const k10CustomeCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 70,
        // color: Colors.amberAccent,
        child: Text(
          'data',
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    );
  }
}
