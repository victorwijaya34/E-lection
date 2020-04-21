import 'package:flutter/material.dart';

class LoginPage_Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
    Container(
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
    child: Text(
    'Welcome',
    style: TextStyle(
    color: Colors.white, fontSize: 25.0,
    ),
    ),
    ),
    );
  }
}

class LoginPage_Sign extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
          child: Text(
            'Sign in to continue',
            style: TextStyle(
              color: Colors.white, fontSize: 15.0,
            ),
          ),
        ),
      );
  }
}

class LoginPage_Username extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.people, color: Colors.teal,
          ),
          title: TextField(
            style: TextStyle(
              color: Colors.teal, fontSize: 15.0,
            ),
            decoration: InputDecoration(
              hintText: 'Username',
            ),
          ),
        ),
      );
  }
}
class LoginPage_Password extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.lock, color: Colors.teal,
          ),
          title: TextField(
            style: TextStyle(
              color: Colors.teal, fontSize: 15.0,
            ),
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
        ),
      );
  }
}



