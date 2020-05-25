import 'package:flutter/material.dart';

class EditNama extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.person, color: Colors.teal,
          ),
          title: TextField(
            style: TextStyle(
              color: Colors.teal, fontSize: 15.0,
            ),
            decoration: InputDecoration(
              hintText: 'Nama Lengkap',
            ),
          ),
        ),
      );
  }
}

class EditNPM extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.confirmation_number, color: Colors.teal,
          ),
          title: TextField(
            style: TextStyle(
              color: Colors.teal, fontSize: 15.0,
            ),
            decoration: InputDecoration(
              hintText: 'NPM',
            ),
          ),
        ),
      );
  }
}

class EditEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.email, color: Colors.teal,
          ),
          title: TextField(
            style: TextStyle(
              color: Colors.teal, fontSize: 15.0,
            ),
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
        ),
      );
  }
}

class EditTelepon extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.phone, color: Colors.teal,
          ),
          title: TextField(
            style: TextStyle(
              color: Colors.teal, fontSize: 15.0,
            ),
            decoration: InputDecoration(
              hintText: 'Nomor Telepon',
            ),
          ),
        ),
      );
  }
}

class EditPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.lock, color: Colors.teal,
          ),
          title: TextField(
            style: TextStyle(
              color: Colors.teal, fontSize: 15.0,
            ),
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
        ),
      );
  }
}

class EditKonfirmasi extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.lock, color: Colors.teal,
          ),
          title: TextField(
            style: TextStyle(
              color: Colors.teal, fontSize: 15.0,
            ),
            decoration: InputDecoration(
              hintText: 'Konfirmasi Password',
            ),
          ),
        ),
      );
  }
}