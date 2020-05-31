import 'package:flutter/material.dart';
import 'InfoDetail.dart';
import 'InfoDetail2.dart';
import 'package:flutterapp/main_screen.dart';
import 'package:flutterapp/calon_model.dart';

class InfoCalon extends StatefulWidget{
  static String id = 'InfoCalon';
  @override
  _InfoCalonState createState() => _InfoCalonState();
  
}

class _InfoCalonState extends State<InfoCalon> {
  Calon calon1 = null;
  Calon calon2 = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calon Ketua'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text('Nomor Urut 1',
                  style: TextStyle(
                    color: Colors.white, fontSize: 25.0,
                  ),),
                ),

                Container(
                  child: Text((calon1 != null) ? calon1.nama : "Rizal",
                    style: TextStyle(
                      color: Colors.white, fontSize: 25.0,
                    ),),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
                    Navigator.pushNamed(context, InfoDetail.id);
                  },
                  child: Image.network(
                      'https://media.unpad.ac.id/photo/mahasiswa/140810/2017/140810170009.JPG',
                    ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text('Nomor Urut 2',
                    style: TextStyle(
                      color: Colors.white, fontSize: 25.0,
                    ),),
                ),
                Container(
                  child: Text((calon1 != null) ? calon1.nama : "Victor",
                    style: TextStyle(
                      color: Colors.white, fontSize: 25.0,
                    ),),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
                    Navigator.pushNamed(context, InfoDetail2.id);
                  },
                  child: Image.network(
                      'https://media.unpad.ac.id/photo/mahasiswa/140810/2017/140810170057.JPG',
                    ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: MyBottomNavBar(),
    );
  }

}
