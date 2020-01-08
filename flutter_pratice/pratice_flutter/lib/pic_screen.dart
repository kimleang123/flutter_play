import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PicScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Pic_display();
  }
}

class Pic_display extends State<PicScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Photo',
              style: TextStyle(
                  color: Color(0xFF00FF80),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            imgDisplay(),
          ],
        ),
      ),
    );
  }

  Widget imgDisplay() {
    return Row(
      children: <Widget>[
        Image.asset(
          'lib/image/dog4.jpg',
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.4,
        ),
        Image.asset(
          'lib/image/chrimas_tree.png',
          width: 150,
          height: 500,
        ),
        Image.asset(
          'lib/image/dog5.jpg',
          width: 100,
          height:400,
        ),
      ],
    );
  }
}
