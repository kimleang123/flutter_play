import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screenProfile.dart';

class Screen_login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login();
  }
}
class Login extends State<Screen_login>{
  TextEditingController textEmail=TextEditingController();
  TextEditingController textPass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title:Text('Login',style: TextStyle(color: Colors.black),),
      ),
      body:SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    children: <Widget>[
                    Text('Email'),
                    TextField(
                        controller: textEmail,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        )
                    ),
                    Text('Password'),
                    TextField(
                        controller: textPass,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                    ),
                    Spacer(flex: 2,),
                    MaterialButton(
                      onPressed: () {
                        print(textEmail);
                        print(textPass);
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>DataScreen(textEmail.text,textPass.text,),
                        ),
                        );
                      },
                      child: Text('Log In'),
                    ),
                    Spacer(flex: 3,),
                  ],
                ),
              ),
      )
    );
  }

}