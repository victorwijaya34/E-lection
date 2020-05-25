import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Memilih.dart';
import 'UI/IconContent.dart';
import 'UI/ReusableCard.dart';
import 'Memilih.dart';

const activeCardColour = Colors.white;

class PilihCalon extends StatefulWidget{
  static String id = 'PilihCalon';
  @override
  _PilihCalonState createState() => _PilihCalonState();
}

class _PilihCalonState extends State<PilihCalon> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pilih Pasangan'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Memilih() ));
                          },
                          child: ReusableCard(
                            colour: activeCardColour,
                            cardChild: IconContent(icon: Icons.supervised_user_circle, label:'Calon 1',),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Memilih() ));
                          },
                          child: ReusableCard(
                            colour: activeCardColour,
                            cardChild: IconContent(icon: Icons.supervised_user_circle, label:'Calon 2',),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.0,
                ),
              ],
            ),
          ),
        ),

    );
  }

}
