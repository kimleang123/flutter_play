import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CardListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcom to AirAsian', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
           ListView(
                  children: <Widget>[
                    Card(
                      child:
                      ListTile(
                      leading: colImg('lib/image/dog2.jpg'),
                      title:nameTitle('Yinata voka'),
                      subtitle: dateSubtitle('30', '11', '2019', '3', '30', 'pm'),
                      trailing: icon(),
                    ),
                    ),
                    Card(
                      child:
                      ListTile(
                      leading: colImg('lib/image/dog3.jpg'),
                      title:nameTitle('Namo carry'),
                      subtitle: dateSubtitle('31', '12', '2019', '4', '30', 'am'),
                      trailing: icon(),
                    ),
                    ),
                    Card(
                      child:
                      ListTile(
                      leading: colImg('lib/image/dog4.jpg'),
                      title:nameTitle('Caterlina nam'),
                      subtitle: dateSubtitle('01', '01', '2020', '11', '59', 'pm'),
                      trailing: icon(),
                    ),
                    ),
                    Card(
                      child:
                      ListTile(
                      leading: colImg('lib/image/dog5.jpg'),
                      title:nameTitle('Capputa yang'),
                      subtitle: dateSubtitle('03', '02', '2020', '12', '30', 'pm'),
                      trailing: icon(),
                    ),
                    ),
                    Card(
                      child:
                      ListTile(
                      leading: colImg('lib/image/dog6.jpg'),
                      title:nameTitle('Monica orita'),
                      subtitle: dateSubtitle('04', '09', '2020', '10', '30', 'am'),
                      trailing: icon(),
                    ),
                    ),
                  ],
            ),
      ),
    );
  }
Widget colImg(String b){
  return Column(
      children: <Widget>[
        circleImg(b)
      ],
  );
}
Widget circleImg(String a){
    return CircleAvatar(
      radius: 25,
      backgroundImage: AssetImage(a),
    );
  }
Widget nameTitle(String name){
  return Text(
    name,
    style: TextStyle(color: Colors.black, fontSize: 30),
  );
}
Widget dateSubtitle(String day,String mon,String year,String hour,String min,String time){
  return Text(
    day+"/"+mon+"/"+year+"\t\t"+hour+":"+min+"\t"+time,
    style: TextStyle(color: Colors.grey),
  );
}
Widget icon(){
  return IconButton(
    icon: Icon(Icons.airplanemode_active, size: 20, color: Colors.blueAccent[100],),
    onPressed: () {},
  );
}
}