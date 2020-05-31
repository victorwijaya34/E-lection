import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'UI/ReusableCard.dart';
import 'package:flutterapp/main_screen.dart';

class VisiPage extends StatefulWidget{
  static String id = 'VisiPage';
  @override
  _VisiPageState createState() => _VisiPageState();
}

class _VisiPageState extends State<VisiPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nomor Urut 1'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Calon nomor urut 1',
                  style: TextStyle(
                    color: Colors.white, fontSize: 25.0,
                  ),),
              ),

              Image.network(
                'https://media.unpad.ac.id/photo/mahasiswa/140810/2017/140810170009.JPG',
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
                    cardChild: NamaTombol(label: 'Menjadikan Himpunan XX menjadi himpunan yang bersahabat'),
                  ),
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