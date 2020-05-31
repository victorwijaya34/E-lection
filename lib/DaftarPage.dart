import 'package:flutter/material.dart';
import 'package:flutterapp/post_result_model.dart';
import 'LoginPage.dart';
import 'package:flutterapp/UI/DaftarPageUI.dart';

class DaftarPage extends StatefulWidget{
  static String id = 'DaftarPage';
  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  PostResult postResult = null;
  bool _validate = false;
  final namaController = TextEditingController();
  final npmController = TextEditingController();
  final passController = TextEditingController();
  final emailController = TextEditingController();
  final hpController = TextEditingController();
  
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    namaController.dispose();
    npmController.dispose();
    passController.dispose();
    emailController.dispose();
    hpController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Daftar'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person, color: Colors.teal,
                    ),
                    title: TextField(
                      controller:namaController,
                      style: TextStyle(
                        color: Colors.teal, fontSize: 15.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Nama Lengkap',
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.confirmation_number, color: Colors.teal,
                    ),
                    title: TextField(
                      controller:npmController,
                      style: TextStyle(
                        color: Colors.teal, fontSize: 15.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'NPM',
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email, color: Colors.teal,
                    ),
                    title: TextField(
                      controller:emailController,
                      style: TextStyle(
                        color: Colors.teal, fontSize: 15.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone, color: Colors.teal,
                    ),
                    title: TextField(
                      controller:hpController,
                      style: TextStyle(
                        color: Colors.teal, fontSize: 15.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Nomor Telepon',
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.lock, color: Colors.teal,
                    ),
                    title: TextField(
                      obscureText: true,
                      controller:passController,
                      style: TextStyle(
                        color: Colors.teal, fontSize: 15.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
                              
                Container(
                  child: RaisedButton(
                    color: Colors.teal.shade400,
                    child: Text('Daftar',
                      style: TextStyle(
                        color: Colors.white, fontSize: 15.0,
                      ),
                    ),
                    onPressed: (){
                      PostResult.registerToAPI(npmController.text, namaController.text, passController.text, emailController.text, hpController.text).then((value){
                        postResult = value;
                        setState(() {});
                      });
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => LoginPage() ));
                    },
                  ),
                ),
                Text((postResult != null) ? postResult.pesan : ""),
              ],
            ),
          ),
        ),
    );
  }
}