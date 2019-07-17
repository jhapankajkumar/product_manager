import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_manager/product_view.dart';

class ProductDetail extends StatelessWidget {


  Widget build(BuildContext context) {
    
    return Scaffold(
          appBar: AppBar(
            title: Text('Product Detail'),
          ),
          body: Container(
            child: Column(children: <Widget>[
              ProductView('product', null),
              RaisedButton(
                color: Colors.deepPurple,
                child: Text('Delete'),
                onPressed: (){
                  showCupertinoDialog(
                    context: context, builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Are you sure?"),
                        content: Text("This Action can not be undone"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Discard"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),

                          FlatButton(
                            child: Text("Contine"),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context,true);
                            },
                          ),

                        ],
                      );
                    },
                    
                  );
                },
              ),
            ],),
          )
    );
  }

}