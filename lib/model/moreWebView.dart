import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class moreWebView extends StatelessWidget {
  final String url;
  final String title;

  const moreWebView({Key? key, required this.url, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
          child: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      )),
    );
  }
}
