import 'package:flutter/material.dart';


class CreateProduct extends StatelessWidget {

  Widget build(BuildContext context) {
    
    return Scaffold(
          body: Center(child: 
          RaisedButton(
            child: Text("Save"),
            onPressed: (){
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Center(child: Text("This is model"),);
                }
              );
            },
          )
          ,)     
    );
  }

}