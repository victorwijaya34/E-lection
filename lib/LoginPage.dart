import 'package:flutter/material.dart';
import 'package:flutterapp/UI/LoginPage_UI.dart';
import 'DaftarPage.dart';
import 'LupaPage.dart';

class LoginPage extends StatefulWidget{
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LoginPage_Welcome(),
                LoginPage_Sign(),
                LoginPage_Username(),
                LoginPage_Password(),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                            color: Colors.white, fontSize: 15.0,
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                              builder: (context) => DaftarPage(),),
                          );
                          },
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        child: Text(
                          'Lupa Password',
                          style: TextStyle(
                            color: Colors.white, fontSize: 15.0,
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LupaPage(),),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  child: Text('Masuk',
                  style: TextStyle(
                    color: Colors.white,),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}