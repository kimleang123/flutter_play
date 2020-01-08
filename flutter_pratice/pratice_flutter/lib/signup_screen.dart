import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratice_flutter/acc_screen.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignScreen();
  }
}

class SignScreen extends State<SignUp> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController comPass=TextEditingController();
  final _keySignUp =GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            Text(
              'Register Account',
              style: TextStyle(
                  color: Color(0xFF00FF80),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            elementBox('Name', Icon(Icons.person, color: Colors.white)),
            Spacer(),
            elementBox('Email', Icon(Icons.email, color: Colors.white)),
            Spacer(),
            elementBoxPass(
                'Password',
                Icon(
                  Icons.vpn_key,
                  color: Colors.white,
                )),
            Spacer(),
            elementBoxPass(
                'Confirm Password',
                Icon(
                  Icons.vpn_key,
                  color: Colors.white,
                )),
            Spacer(),
            signButton('Sign Up'),
            Spacer(flex: 11),
          ],
        ),
      ),
    );
  }

  Widget elementBox(String st, Icon ss) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 10.0,
      shadowColor: Colors.greenAccent,
      child: TextFormField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF00FF80),
            prefixIcon: ss,
            labelText: st,
            labelStyle: TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xFF00FF80),
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Color(0xFF00FF80),
                  style: BorderStyle.solid,
                  width: 2,
                ))),
      ),
    );
  }

  Widget elementBoxPass(String t, Icon it) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 10.0,
      shadowColor: Colors.greenAccent,
      child: TextFormField(
        obscureText: true,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF00FF80),
            prefixIcon: it,
            labelText: t,
            labelStyle: TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xFF00FF80),
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Color(0xFF00FF80),
                  style: BorderStyle.solid,
                  width: 2,
                ))),
      ),
    );
  }

  Widget signButton(String sb) {
    return Center(
      child: MaterialButton(
        child: Text(
          sb,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        color: Color(0xFF00FF80),
        onPressed: () {
          print('call me');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AccScreen(),
            ),
          );
        },
      ),
    );
  }
}
