import 'package:flutter/material.dart';
import 'package:flutterapp/UI/LoginPage_UI.dart';
import 'package:flutterapp/post_result_model.dart';
import 'DaftarPage.dart';
import 'LupaPage.dart';
import 'HomePage.dart';
import 'HomePageAdmin.dart';

class LoginPage extends StatefulWidget{
  static String id = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  PostResult postResult = null;
  final npmController = TextEditingController();
  final passController = TextEditingController();
  
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    npmController.dispose();
    passController.dispose();
    super.dispose();
  }

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
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.people, color: Colors.teal,
                      ),
                      title: TextField(
                        controller:npmController,
                        style: TextStyle(
                          color: Colors.teal, fontSize: 15.0,
                        ),
                        decoration: InputDecoration(
                          hintText: 'NPM',
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.lock, color: Colors.teal,
                      ),
                      title: TextField(
                        obscureText: true,
                        controller:passController,
                        style: TextStyle(
                          color: Colors.teal, fontSize: 15.0,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
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
                      if(npmController.text == "admin" && passController.text == "admin"){
                        Navigator.pushNamed(context, HomePageAdmin.id);
                      }
                      PostResult.loginToAPI(npmController.text, passController.text).then((value){
                        postResult = value;
                        setState(() {});
                        if (postResult.pesan == "success"){
                          Navigator.pushNamed(context, HomePage.id);
                        };    
                      });                                        
                    },
                  ),
                  Text((postResult != null) ? postResult.pesan : ""),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}