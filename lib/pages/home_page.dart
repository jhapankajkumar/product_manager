import 'package:flutter/material.dart';
import 'package:product_manager/pages/manage_product.dart';
import 'package:product_manager/pages/menu.dart';
import 'package:product_manager/pages/settings_page.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Menu(),
      appBar: AppBar(
        title: Text('Product Manager'),
      ),
      body: ProductManager(),
    );
  }
}
