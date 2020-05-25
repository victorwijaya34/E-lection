import 'package:flutter/material.dart';
import 'package:flutterapp/HomePage.dart';
import 'package:flutterapp/UI/EditProfileUI.dart';
import 'HomePage.dart';
import 'package:flutterapp/main_screen.dart';

class EditProfile extends StatefulWidget{
  static String id = 'EditProfile';
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit Profile'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('images/logoitem.png'),
              ),
              EditNama(),
              EditNPM(),
              EditEmail(),
              EditTelepon(),
              EditPassword(),
              EditKonfirmasi(),

              Container(
                child: RaisedButton(
                  color: Colors.teal.shade400,
                  child: Text('Simpan',
                    style: TextStyle(
                      color: Colors.white, fontSize: 15.0,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomePage() ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}