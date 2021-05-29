import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TampilanWeb extends StatelessWidget {
  final String url;

  TampilanWeb(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(url),
        centerTitle: true,
        backgroundColor: Colors.teal,
        bottom: PreferredSize(
          child: Container(
            color:Colors.teal,
            height: 4.0,
          ),
          preferredSize:Size.fromHeight(0),
        ),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}