import 'package:flutter/material.dart';
import 'package:product_manager/pages/home_page.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        child: Column(children: <Widget>[
          SizedBox(height: 200,),
          TextField(
            decoration: InputDecoration(labelText: 'Email',labelStyle: TextStyle( fontWeight: FontWeight.bold)),
            onChanged: (String text) {
                print(text);
            },
          ),
          
          TextField(
            decoration: InputDecoration(labelText: 'Password',labelStyle: TextStyle( fontWeight: FontWeight.bold)),
            keyboardType: TextInputType.text,
            obscureText: true,
            onChanged: (String text) {
                print(text);
            },
          ),
          SizedBox(height: 50,),
           RaisedButton(
              color: Colors.grey,
              child: Text("Login"),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
              }),
        ],),
      )
    );
  }
  
}