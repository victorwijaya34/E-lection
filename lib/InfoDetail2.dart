import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'VisiPage.dart';
import 'MisiPage.dart';
import 'ProgramPage.dart';
import 'UI/ReusableCard.dart';
import 'package:flutterapp/main_screen.dart';

class InfoDetail2 extends StatefulWidget{
  static String id = 'InfoDetail2';
  @override
  _InfoDetail2State createState() => _InfoDetail2State();
}

class _InfoDetail2State extends State<InfoDetail2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nomor Urut 2'),
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

                Image.network(
                  'https://media.unpad.ac.id/photo/mahasiswa/140810/2017/140810170057.JPG',
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