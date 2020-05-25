import 'package:flutter/material.dart';
import 'PilihCalon.dart';

class BilikSuara extends StatefulWidget{
  static String id = 'BilikSuara';
  @override
  _BilikSuaraState createState() => _BilikSuaraState();
}

class _BilikSuaraState extends State<BilikSuara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Masukkan PIN'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    title: TextField(
                      style: TextStyle(
                        color: Colors.teal, fontSize: 15.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'PIN',
                      ),
                    ),
                  ),
                ),

                Container(
                  child: RaisedButton(
                    color: Colors.teal.shade400,
                    child: Text('ENTER',
                      style: TextStyle(
                        color: Colors.white, fontSize: 15.0,
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, PilihCalon.id);
                    },
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