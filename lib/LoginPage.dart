import 'package:flutter/material.dart';
import 'package:flutterapp/UI/LoginPage_UI.dart';
import 'DaftarPage.dart';
import 'LupaPage.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget{
  static String id = 'LoginPage';
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
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                  ),
                  Image(
                    image: AssetImage('images/logoitem.png'),
                  ),
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
                            Navigator.pushNamed(context, DaftarPage.id);
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
                            Navigator.pushNamed(context, LupaPage.id);
                          },
                        ),
                      ),
                    ],
                  ),
                  RaisedButton(
                    color: Colors.teal.shade400,
                    child: Text('Masuk',
                    style: TextStyle(
                      color: Colors.white,),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, HomePage.id);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}