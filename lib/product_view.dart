import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final String product ;
  final Function tapSelector;
  ProductView(this.product, this.tapSelector);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          if (tapSelector != null) {
            tapSelector(product);
          }
      },
      child: Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pic1.jpeg'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(product),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
    );
  }
}
