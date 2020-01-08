import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowCol extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Row(
        children: <Widget>[
          col(),
          Image.asset('image/santa.jpg')
        ],
      )

    );
  }
Widget col(){
return Column(

);
}
}