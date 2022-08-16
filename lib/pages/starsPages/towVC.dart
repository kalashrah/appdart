import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cached_network_image/cached_network_image.dart';

class towvc extends StatefulWidget {
  const towvc({Key? key}) : super(key: key);

  @override
  State<towvc> createState() => _towvcState();
}

class _towvcState extends State<towvc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Color(0xFFDA9737),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 250,
              width: 250,
              child: Container(
                child: CachedNetworkImage(
                  imageUrl:
                      'https://www.spl.sa/themes/custom/spl/assets/logos/485.png',
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              )
              ),
        ],
      ),
    );
  }
}
