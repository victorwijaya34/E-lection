import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'HomePage.dart';
import 'DaftarPage.dart';
import 'InfoDetail.dart';

class InfoCalon extends StatefulWidget{
  static String id = 'InfoCalon';
  @override
  _InfoCalonState createState() => _InfoCalonState();
}

class _InfoCalonState extends State<InfoCalon> {

  int _currentIndex = 0;
  final _pageOptions = [
    LoginPage(),
    HomePage(),
    DaftarPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pasangan'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text('Pasangan Nomer 1',
                  style: TextStyle(
                    color: Colors.white, fontSize: 25.0,
                  ),),
                ),

                Container(
                  child: Text('Nama & Nama',
                    style: TextStyle(
                      color: Colors.white, fontSize: 25.0,
                    ),),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
                    Navigator.pushNamed(context, InfoDetail.id);
                  },
                  child: Image.asset('images/logoijo.png'),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text('Pasangan Nomer 2',
                    style: TextStyle(
                      color: Colors.white, fontSize: 25.0,
                    ),),
                ),
                Container(
                  child: Text('Nama & Nama',
                    style: TextStyle(
                      color: Colors.white, fontSize: 25.0,
                    ),),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
                    Navigator.pushNamed(context, InfoDetail.id);
                  },
                  child: Image.asset('images/logoijo.png'),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.power_settings_new),
              title: Text(''),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
              backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text(''),
              backgroundColor: Colors.white,
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          }
      ),
    );
  }

}
