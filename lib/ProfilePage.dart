import 'package:flutter/material.dart';
import 'package:flutterapp/HomePage.dart';
import 'UI/ProfileUI.dart';
import 'package:flutterapp/main_screen.dart';

const activeCardColour = Colors.white;

class ProfilePage extends StatefulWidget{
  static String id = 'ProfilePage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        backgroundColor: Colors.teal,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/logoitem.png'),
            ),
            NamaPengguna(),
            EmailPengguna(),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Text(
                      'Simpan',
                      style: TextStyle(
                        color: Colors.white, fontSize: 15.0,
                      ),
                    ),
                    onPressed: (){
                      print('verifikasi');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      'Verifikasi',
                      style: TextStyle(
                        color: Colors.white, fontSize: 15.0,
                      ),
                    ),
                    onPressed: (){
                      print('verifikasi');
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
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}


