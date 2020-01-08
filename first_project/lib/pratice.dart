import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Profile extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hello World', style: TextStyle(color: Colors.white),),),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // _img(),
          _header('Ly Kimleang','never go to you'),
          _bodyContent(),
      ],
      ),
      );
  }
  Widget _header(String name,String text){
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          _colimg(),
          Text(name, style: TextStyle(fontSize: 18),),
          Text(text, style: TextStyle(fontSize: 10),),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.accessibility),
                Icon(Icons.accessibility_new),
                Icon(Icons.accessibility),
              ],
            ),
          )
        ],
        ),
        );
  }
  Widget _bodyContent(){
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _widgetTitle('Job', 'Student'),
          _widgetTitle('Email', 'lykimleang456@gmail.com'),
          _widgetTitle('Address', 'Phnom Penh'),
          _widgetTitle('Phone number', '098830773'),
        ],
        ),
        );
  }
  Widget _widgetTitle(String name, String des){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name+':', style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold ),
          ),
          Text('\t\t\t'+des, style: TextStyle(
            fontSize: 14, )
          ,),
        ],
        ),
      );
  }
  ////import image
  // Widget _img(){
  //   return Expanded(
  //     flex:1,
  //     child: Container(
  //       child: Image.asset('lib/image/dog2.jpg') ,)
  //       ,);
  // }
  Widget _colimg(){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _circleimg(),
        ],
        ),
        );
  }
  Widget _circleimg(){
    return CircleAvatar(
      radius: 100 ,
      backgroundImage: AssetImage('lib/image/dog2.jpg'),
      );
  }
}
  
