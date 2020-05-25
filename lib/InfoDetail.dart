import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'VisiPage.dart';
import 'MisiPage.dart';
import 'ProgramPage.dart';
import 'UI/ReusableCard.dart';
import 'package:flutterapp/main_screen.dart';

class InfoDetail extends StatefulWidget{
  static String id = 'InfoDetail';
  @override
  _InfoDetailState createState() => _InfoDetailState();
}

class _InfoDetailState extends State<InfoDetail> {

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
                    onTap: (){ Navigator.push(
                        context, MaterialPageRoute(builder: (context) => VisiPage() ));
                    },
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: NamaTombol(label: 'VISI'),
                    ),
                    ),
                  ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 400,
                        child: GestureDetector(
                          onTap: (){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MisiPage() ));
                          },
                          child: ReusableCard(
                            colour: activeCardColour,
                            cardChild: NamaTombol(label: 'MISI'),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 400,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => ProgramPage() ));
                          },
                          child: ReusableCard(
                            colour: activeCardColour,
                            cardChild: NamaTombol(label: 'Program\nUnggulan'),
                          ),
                        ),
                      ),
                    ],
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