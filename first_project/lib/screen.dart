import 'package:first_project/screen2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My App'),
      ),
      
      body:Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Hi guy'),
          Text('Opppa',style: TextStyle(
            fontSize: 30, 
            fontWeight:FontWeight.bold)
            ),
          FlatButton(child: Text('click here !'),
          color: Colors.blue,
          onPressed: (){
            print('press');
            Navigator.push(context,new MaterialPageRoute(builder: (context)=> Screen2()));
          },),
          IconButton(
            onPressed: (){print('icon');},
            icon: Icon(Icons.wifi_tethering,size:40,color:Colors.red,),
          ),
          RaisedButton(
            color: Colors.cyan,
            onPressed: (){},
            child: Text('Click me'),)],
        ),
      ),
    );
  }
}