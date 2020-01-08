import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratice_flutter/acc_screen.dart';
import 'package:pratice_flutter/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login();
  }
}

class Login extends State<LoginScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController pwd = TextEditingController();
  final _keyform = GlobalKey<FormState>();
  String _varlidateName(String value) {
    if (value.isEmpty) {
      return "Name cannot empty";
    }
  }

  String _validatePwd(String pass) {
    if (pass.isEmpty) {
      return "Password need";
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Form(
            key: _keyform,
            child: Column(
              children: <Widget>[
                Text('Log in account',
                    style: TextStyle(
                        color: Color(0xFF00FF80),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Spacer(
                  flex: 2,
                ),
                textLogin(),
                Spacer(),
                textPass(),
                Spacer(),
                loginButton(),
                Spacer(
                  flex: 12,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textLogin() {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(1, 2),
              color: Colors.greenAccent,
              blurRadius: 10,
            )
          ]),
      child: TextFormField(
        controller: name,
        validator: _varlidateName,//not call function cuz it auto put the value to the function
        cursorColor: Color(0xFFFFFFFF),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFF00FF80),
          labelText: ('Name'),
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: Icon(Icons.person, color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xFF00FF80),
                style: BorderStyle.solid,
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
            //when you fill the text in textfield =>ha
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Color(0xFF00FF80),
              style: BorderStyle.solid,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  Widget textPass() {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(1, 2),
              color: Colors.greenAccent,
              blurRadius: 10,
            )
          ]),
      child: TextFormField(
        validator: _validatePwd,
        controller: pwd,
        cursorColor: Color(0xFFFFFFFF),
        style: TextStyle(color: Colors.white),
        obscureText: true, //make input to password
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFF00FF80), //set background color
          labelText: ('Password'),
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: Icon(Icons.vpn_key,
              color: Colors.white), //put icon at the begining of the text field
          enabledBorder: OutlineInputBorder(
            //set border
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Color(0xFF00FF80),
              style: BorderStyle.solid,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            //set border when fill the form
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Color(0xFF00FF80),
              style: BorderStyle.solid,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(
            flex: 3,
          ),
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF00FF80),
            ),
            child: materButton('Log in'),
          ),
          Spacer(),
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF00FF80),
            ),
            child: materButton1('Sign Up'),
          ),
          Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }

  Widget materButton(String name) {
    return Center(
      child: new MaterialButton(
        child: Text(name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        onPressed: () {
          if (_keyform.currentState.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AccScreen(),
              ),
            );
          }
          print('click here...');
        },
      ),
    );
  }

  Widget materButton1(String name) {
    return Center(
      child: new MaterialButton(
        child: Text(name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        onPressed: () {
          print('click me...');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp(),
            ),
          );
        },
      ),
    );
  }
}
