import 'package:flutter/material.dart';
import 'package:flutterapp/EditProfile.dart';
import 'package:flutterapp/HomePage.dart';
import 'package:flutterapp/LoginPage.dart';

class MyBottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(top:5, bottom:25),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(icon: Icon(Icons.power_settings_new, size: 25,
          color: Colors.tealAccent,),
            onPressed: (){
              Navigator.pushReplacementNamed(context, LoginPage.id);
            },
          ),
          IconButton(icon: Icon(Icons.home, size: 25,
            color: Colors.tealAccent,),
            onPressed: (){
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
          ),
          IconButton(icon: Icon(Icons.account_circle, size: 25,
            color: Colors.tealAccent,),
            onPressed: (){
              Navigator.pushReplacementNamed(context, EditProfile.id);
            },
          ),
        ],
      ),
    );
  }
}