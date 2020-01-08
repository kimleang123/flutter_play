import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
          onPressed:(){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios),),
        title: Text('OOOOPPPPAAAA'),
        ),
        body: Center(
          child: FlatButton(
            color: Colors.blueGrey,
            child: Text('back...'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          ),
    );
  }
}