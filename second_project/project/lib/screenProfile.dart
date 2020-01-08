import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DataScreen extends StatelessWidget{
  DataScreen(this.email,this.pass);
  String email;
  String pass;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Juman'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('$email'),
            Text('$pass'),
          ],
        ),
      ),
    );
  }
  
}