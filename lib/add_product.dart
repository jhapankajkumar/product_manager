import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  final Function addProduct;

  const AddProduct({Key key, this.addProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            'Add Product',
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            addProduct('Value');
          },
          disabledColor: Colors.black,
        ),

      ],
    );
  }
}
