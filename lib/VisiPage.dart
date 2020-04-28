import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'HomePage.dart';
import 'DaftarPage.dart';
import 'UI/ReusableCard.dart';

class VisiPage extends StatefulWidget{
  static String id = 'VisiPage';
  @override
  _VisiPageState createState() => _VisiPageState();
}

class _VisiPageState extends State<VisiPage> {

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
        title: Text('Nomor Urut ...'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Calon nomor urut ...',
                  style: TextStyle(
                    color: Colors.white, fontSize: 25.0,
                  ),),
              ),

              Image(
                image: AssetImage('images/logobiru.png'),
              ),
              Container(
                width: double.infinity,
                height: 150,
                child: GestureDetector(
                  onTap: (){
                    print('Visi');
                  },
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: NamaTombol(label: 'VISI'),
                  ),
                ),
              ),
            ],
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

class NamaTombol extends StatelessWidget{
  NamaTombol({@required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}