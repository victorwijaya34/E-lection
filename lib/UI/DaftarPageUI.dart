import 'package:flutter/material.dart';

class DaftarPage_nama extends StatelessWidget{
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

class DaftarPage_npm extends StatelessWidget{
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

class DaftarPage_email extends StatelessWidget{
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

class DaftarPage_phone extends StatelessWidget{
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

class DaftarPage_password extends StatelessWidget{
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

class DaftarPage_konfirmasi extends StatelessWidget{
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