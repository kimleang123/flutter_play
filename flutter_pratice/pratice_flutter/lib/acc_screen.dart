import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pratice_flutter/pic_screen.dart';

class AccScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ScreenAcc();
  }
}

class ScreenAcc extends State<AccScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            profileWidget('LY Kimleang', 'lib/image/kimi.jpeg'),
            Spacer(),
            Divider(
              color: Color(0xFF00FF80),
            ),
            Spacer(),
            Text('Email        :',
                style: TextStyle(
                  color: Color(0xFF00FF80),
                  fontSize: 20,
                )),
            Spacer(),
            Text('Address      :',
                style: TextStyle(
                  color: Color(0xFF00FF80),
                  fontSize: 20,
                )),
            Spacer(),
            Text('Phone Number :',
                style: TextStyle(
                  color: Color(0xFF00FF80),
                  fontSize: 20,
                )),
            Spacer(),
            Text('Study at     :',
                style: TextStyle(
                  color: Color(0xFF00FF80),
                  fontSize: 20,
                )),
            Spacer(),
            Text('Skill        :',
                style: TextStyle(
                  color: Color(0xFF00FF80),
                  fontSize: 20,
                )),
            Spacer(),
            Row(
              children: <Widget>[
                GestureDetector(
                  child: photoContainner(
                    Icon(Icons.photo_library, color: Color(0xFF00FF80)),
                    'Photo'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> PicScreen()));
                  },
                ),
                
                Spacer(),

                GestureDetector(
                  child: photoContainner(
                      Icon(Icons.people, color: Color(0xFF00FF80)), 'Friends'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PicScreen()));
                  },
                ),
              ],
            ),
            Spacer(
              flex: 5,
            )
          ],
        ),
      ),
    );
  }

  Widget profileWidget(String name, String pic) {
    return Row(
      children: <Widget>[
        circlePic(pic),
        Spacer(
          flex: 2,
        ),
        Text(name,
            style: TextStyle(
                fontSize: 30,
                color: Color(0xFF00FF80),
                fontWeight: FontWeight.bold)),
        Spacer(flex: 2)
      ],
    );
  }

  Widget circlePic(String pic) {
    return CircleAvatar(
      backgroundImage: AssetImage(pic),
      radius: 60,
      backgroundColor: Colors.black,
    );
  }

  Widget photoContainner(Icon ss, String tex) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.4,//set size of width reponsive to all sreen that if number> =>pic > else number< =>pic >.
          height: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: Offset(2, 3),
                  color: Colors.grey,
                  blurRadius: 3,
                )
              ]),
          child: Column(
            children: <Widget>[
              Spacer(
                flex: 3,
              ),
              IconButton(

                onPressed: () {},
                icon: ss,
                iconSize: 70,
              ),
              Spacer(),
              Text(
                tex,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF00FF80),
                    fontWeight: FontWeight.bold),
              ),
              Spacer(
                flex: 3,
              )
            ],
          ),
        ),
      ],
    );
  }
}
