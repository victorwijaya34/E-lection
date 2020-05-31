import 'package:flutter/material.dart';
import 'package:flutterapp/post_result_model.dart';
import 'package:flutterapp/calon_model.dart';


class HomePageAdmin extends StatefulWidget{
  static String id = 'HomePageAdmin';
  @override
  _HomePageAdminState createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  PostResult postResult = null;
  Calon calonRizal = null;
  Calon calonVictor = null;
  final npmController = TextEditingController();
  final passController = TextEditingController();
  
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    npmController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Perolehan Suara"),
                  Image.network(
                    'https://media.unpad.ac.id/photo/mahasiswa/140810/2017/140810170009.JPG',
                  ),
                  Text("Rizal"),
                  Text((calonRizal != null) ? calonRizal.votes : "-"),
                  Image.network(
                    'https://media.unpad.ac.id/photo/mahasiswa/140810/2017/140810170057.JPG',
                  ),
                  Text("Victor"),
                  Text((calonVictor != null) ? calonVictor.votes : "-"),
                  RaisedButton(
                    color: Colors.teal.shade400,
                    child: Text('Refresh',
                    style: TextStyle(
                      color: Colors.white,),
                    ),
                    onPressed: (){
                      Calon.connectToAPI("1").then((value){
                        calonRizal = value;
                        setState(() {});                             
                      });
                      Calon.connectToAPI("2").then((value){
                        calonVictor = value;                        
                        setState(() {});    
                      });                                 
                    },
                  ),                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}