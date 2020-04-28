import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterapp/DaftarPage.dart';
import 'package:flutterapp/LoginPage.dart';
import 'package:flutterapp/UI/ReusableCard.dart';
import 'package:flutterapp/UI/IconContent.dart';
import 'InfoCalon.dart';

const activeCardColour = Colors.white;

class HomePage extends StatefulWidget{
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
        title: Text('Beranda'),
        backgroundColor: Colors.teal,
      ),
      body:
      Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 280,
                child: GestureDetector(
                  onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => InfoCalon() ));
                  },
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: Icons.people, label:'Info Calon',),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print('Timeline');
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.timeline, label:'Timeline',),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print('Bilik Suara');
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.inbox, label:'Bilik Suara',),
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ],
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


