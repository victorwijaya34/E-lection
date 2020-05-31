import 'package:flutter/material.dart';
import 'InfoDetail.dart';
import 'package:flutterapp/main_screen.dart';

class Timeline extends StatefulWidget{
  static String id = 'Timeline';
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Timeline'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text('Timeline',
                    style: TextStyle(
                      color: Colors.white, fontSize: 25.0,
                    ),),
                ),

                FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
                    Navigator.pushNamed(context, InfoDetail.id);
                  },
                  child: Image.asset('images/image 3.png'),
                ),
                SizedBox(
                  height: 30,
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
