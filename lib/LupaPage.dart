import 'package:flutter/material.dart';
import 'main.dart';
import 'LoginPage.dart';

class LupaPage extends StatefulWidget{
  static String tag = 'lupa-page';
  @override
  _LupaPageState createState() => _LupaPageState();
}

class _LupaPageState extends State<LupaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Lupa Password'),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                        hintText: 'Username / NPM',
                      ),
                    ),
                  ),
                ),

                Container(
                  child: RaisedButton(
                    child: Text('Lupa Password',
                    style: TextStyle(
                      color: Colors.white, fontSize: 15.0,
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}