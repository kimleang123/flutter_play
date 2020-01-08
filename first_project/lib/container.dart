import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Containers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        actions:<Widget>[
          Icon(Icons.account_circle,),
        ] ,
      ),
      body: Column(
        //not nessesary cuz we put all widget had return in center.
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height:20),
          cNormal(),
          SizedBox(height:20),
          c2Round(),
          SizedBox(height:20),
          cGradient(),
          SizedBox(height:20),
          cShadow(),
          SizedBox(height:20),
          cImage(),
          SizedBox(height:20),
          cMulGradient(),
        ],
      ),
    );
  }
Widget cNormal(){
  return Center(
    child: Container(
      margin:const EdgeInsets.all(2.0) ,
      height: 100,
      width: 400,
      color: Colors.deepPurple,
    ),
  );
}
Widget cRound(){
  return Center(
    child: Container(
      margin:const EdgeInsets.all(2.0) ,
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(40)
      ),
    ),
  );
}
Widget c2Round(){
  return Center(
    child: Container(
      margin:const EdgeInsets.all(2.0) ,
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        )
      ),
    ),
  );
}
Widget cShadow(){
  return Center(
    child: Container(
      margin:const EdgeInsets.all(2.0) ,
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent,
          width: 3,
        ),
        color: Colors.pink,
        borderRadius: BorderRadius.circular(40),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(5,5),
            color: Colors.cyan,
            blurRadius: 20,
          )
        ]
      ),
    ),
  );
}
Widget cGradient(){
  return Center(
    child: Container(
      margin:const EdgeInsets.all(2.0) ,
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFFE8F5E9),
            Color(0xFFC8E6C9),
            Color(0xFFA5D6A7),
            Color(0xFF81C784),
          ]
        ),
        borderRadius: BorderRadius.circular(40),
        )
    ),
  );
}
Widget cImage(){
  return Center(
    child: Container(
      margin:const EdgeInsets.all(2.0) ,
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        image:DecorationImage(
          image:AssetImage('lib/image/dog2.jpg'),
          fit: BoxFit.fill,
        ),
         boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(5,5),
            color: Colors.cyan,
            blurRadius: 20,
          )
        ]
      ),
    ),
  );
}
Widget cMulGradient(){
  return Center(
    child: Container(
      margin: const EdgeInsets.all(2.0),
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF86FAF2),
            Color(0xFF30E7ED),
            Color(0xFF00A6D7),
            Color(0xFF0058B3),
            Color(0xFF001B87),
            Color(0xFFE8F5E9),
            Color(0xFFC8E6C9),
            Color(0xFFA5D6A7),
            Color(0xFF81C784),
            Color(0xFFFDEFDF),
            Color(0xFFFD605F),
            Color(0xFFFD504F),
            Color(0xFFFD403F),
            Color(0xFFFD100F),
          ]
        )
      ),
    )
  );
}
}