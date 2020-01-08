import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('List_view',style: TextStyle(color: Colors.blueGrey),),
        centerTitle: true,
        backgroundColor:(Colors.yellow),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Card(
              child:
                ListTile(
                leading: circleImg('lib/image/dog2.jpg'),
                title: colName('Ly Kimleang', '29', '11', '1999','12', '30', 'pm'),
                trailing: sign(),
                ),
            ),
            Card(
              child:
                ListTile(
                leading: circleImg('lib/image/dog3.jpg'),
                title: colName('Ly Kimlang', '20', '11', '1990','11', '30', 'pm'),
                trailing: sign(),
                ),
            )
          ],
        ),
      )
    );
  }
  Widget circleImg(String a){
    return CircleAvatar(
      radius: 40,
      backgroundImage: AssetImage(a),
    );
  }
  Widget colName(String name,String day,String mon,String year,String hour,String min,String time){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(name, style: TextStyle(fontSize: 30,color: Colors.blueGrey),),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(day+"/"+mon+"/"+year),
            Text("\t\t"+hour+":"+min+time),
          ],
        ),
      ],
    );
  }
  Widget sign(){
    return IconButton(
          icon: Icon(Icons.airplanemode_active,size: 30,color: Colors.blue,), 
          onPressed: () {},
    );
  }
}