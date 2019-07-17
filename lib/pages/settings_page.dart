import 'package:flutter/material.dart';
import 'package:product_manager/pages/menu.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Settings extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: Center(
            child: Text('Settings'),
          ),
        );
  }
}
