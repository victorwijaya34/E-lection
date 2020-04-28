import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:flutterapp/UI/DaftarPageUI.dart';

class DaftarPage extends StatefulWidget{
  static String id = 'DaftarPage';
  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Daftar'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: SingleChildScrollView(
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
                    color: Colors.teal.shade400,
                    child: Text('Daftar',
                      style: TextStyle(
                        color: Colors.white, fontSize: 15.0,
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => LoginPage() ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}