import 'package:flutter/material.dart';
import 'package:product_manager/pages/product_detail.dart';
import 'package:product_manager/product_view.dart';
import 'package:product_manager/add_product.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager({this.startingProduct });
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    
    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(String product){
    setState(() {
      _products.remove(product);
    });
  }

  void _productSelected(String product) {
    print(product);
    Navigator.push<bool>(context, MaterialPageRoute(
      builder: (BuildContext context) => ProductDetail()
    )).then((bool shouldDelete){
        print(shouldDelete);
        if (shouldDelete){
          _deleteProduct(product);
        }
    });
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(2.0),
        child: AddProduct(
          addProduct: _addProduct,
        ),
      ),
      _products.length > 0 ? listView() : cardView
    ]);
  }

Container listView(){
  return Container(
    child:  Expanded(
          child: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8.0),
          itemCount: _products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductView(_products[index], _productSelected);
          },
        ),
    ),
  );
}
  
  var cardView = Center(child: Text('Sorry No Record Found'));
}
