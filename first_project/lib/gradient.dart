import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackGradient extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[200],
        title: Text('Gradient'),
        centerTitle:true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF2c3e50),
              Color(0xFF3498db),
            ]
          )
        ),
      ),
    );
  }

}