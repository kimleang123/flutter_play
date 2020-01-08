import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class RowcolScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: <Widget>[
          Text('Text 1'),
          Text('Text 2'),
          Row(children: <Widget>[
            Text('Text 3'),
            Text('Text 4'),
            Column(children: <Widget>[
              Text('Text 5'),
              Text('Text 6'),
            ],
            ),
            Text('Text 7')],
          )
          ],
        ),
      ),
      );

  }
}    