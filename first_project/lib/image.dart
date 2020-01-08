import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Img_full extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Full image'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('lib/image/dog2.jpg'),
          ],
        ),
      ),
    );
  }

}