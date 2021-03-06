import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/HomePage.dart';
import 'package:flutterapp/PilihCalon.dart';
import 'package:flutterapp/vote_model.dart';
import 'UI/IconContent.dart';
import 'UI/ReusableCard.dart';
import 'HomePage.dart';
import 'PilihCalon.dart';

const activeCardColour = Colors.white;

class Memilih extends StatefulWidget{
  static String id = 'Memilih';
  @override
  _MemilihState createState() => _MemilihState();
}

class _MemilihState extends State<Memilih> {
  Vote vote = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bilik Suara'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                child: Image.network(
                  'https://media.unpad.ac.id/photo/mahasiswa/140810/2017/140810170009.JPG',
                ),
              ),
              Container(
                child: Text('Rizal',
                  style: TextStyle(color: Colors.white, fontSize: 20,),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text('Yakin dengan pilihan kamu?',
                  style: TextStyle(color: Colors.white, fontSize: 20,),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        child: FlatButton(
                          color: Colors.white,
                          child: Text('Tidak',
                            style: TextStyle(color: Colors.black, fontSize: 20.0,),
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, PilihCalon.id);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: FlatButton(
                        color: Colors.white,
                        child: Text('Ya',
                          style: TextStyle(color: Colors.black, fontSize: 20.0,),
                        ),
                        onPressed: (){
                          Vote.connectToAPIRizal().then((value){
                            vote = value;
                            setState(() {});
                            Navigator.pushNamed(context, HomePage.id);
                          });  
                        },
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
