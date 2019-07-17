import 'package:flutter/material.dart';
import 'package:product_manager/pages/manage_product.dart';
import 'package:product_manager/pages/settings_page.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Choose"),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text("Manage Product"),
              onTap: () {
                if (Navigator.)
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ManageProduct()));
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Settings()));
              },
            )
          ],
        ),
      );
  }
  
}