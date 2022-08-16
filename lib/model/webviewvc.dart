import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class appWebView extends StatelessWidget {
  final String url;

  const appWebView({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
          child: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      )),
    );
  }
}
