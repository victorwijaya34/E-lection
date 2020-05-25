import 'package:flutter/material.dart';
import 'package:flutterapp/Timeline.dart';
import 'package:flutterapp/UI/ReusableCard.dart';
import 'package:flutterapp/UI/IconContent.dart';
import 'package:flutterapp/main_screen.dart';
import 'InfoCalon.dart';
import 'Timeline.dart';
import 'BilikSuara.dart';

const activeCardColour = Colors.white;

class HomePage extends StatefulWidget{
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Timeline() ));
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
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => BilikSuara() ));
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
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}


