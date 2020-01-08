import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'image.dart';

class Circle_img extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:
        AppBar(
          title: Text('Circle Image', style: TextStyle(color: Colors.lightBlue),),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_forward_ios), 
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Img_full()));
            },
          )
        ),
      body: Center(
        child: Center(
          child: Container(
            child: _circleImg(),
          ),
        ),
      ),
      );
  }
  Widget _circleImg(){
    return CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage('lib/image/dog2.jpg'),
    );
  }
}