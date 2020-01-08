import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UIscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ViewScreenStateful();
  }
}

class ViewScreenStateful extends State<UIscreen> {
  int number = 0;
  void remove() {
    number--;
    print(number);
    setState(() {
      // number--;
    });
  }

  void add() {
    number++;
    print(number);
    setState(() {
      // number++;
    });
  }

  void reset() {
    number = 0;
    print(number);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Stateful Wiget', style: TextStyle(color: Colors.orange)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Number:\n\t\t\t\t\t$number',
                style: TextStyle(
                  fontSize: 30,
                )),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      add();
                    },
                    color: Colors.orange,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      remove();
                    },
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                reset();
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
