import 'package:flutter/material.dart';
import 'package:flutterapp/UI/DaftarPageUI.dart';
import 'main.dart';
import 'LoginPage.dart';

class DaftarPage extends StatefulWidget{
  static String tag = 'daftar-page';
  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Daftar'),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DaftarPage_nama(),
                DaftarPage_npm(),
                DaftarPage_email(),
                DaftarPage_phone(),
                DaftarPage_password(),
                DaftarPage_konfirmasi(),

                Container(
                  child: RaisedButton(
                    child: Text('Daftar',
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