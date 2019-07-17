import 'package:flutter/material.dart';
import 'package:product_manager/pages/menu.dart';
import 'package:product_manager/pages/product_create_page.dart';
import 'package:product_manager/pages/product_list_page.dart';


class ManageProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: Text('Product Manager'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: "Create Products",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "My Products",
              )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          CreateProduct(),
          ProductList()
        ],),
      ),
      length: 2,
    );
  }
}
