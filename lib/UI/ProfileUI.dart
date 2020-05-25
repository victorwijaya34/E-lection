import 'package:flutter/material.dart';

class NamaPengguna extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
          child: Text(
            'NAMA PENGGUNA',
            style: TextStyle(
              color: Colors.white, fontSize: 35.0,
            ),
          ),
        ),
      );
  }
}

class EmailPengguna extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
          child: Text(
            'Email pengguna',
            style: TextStyle(
              color: Colors.white, fontSize: 15.0,
            ),
          ),
        ),
      );
  }
}

class StatusVerifikasi extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
          child: Text(
            'Status verifikasi',
            style: TextStyle(
              color: Colors.white, fontSize: 15.0,
            ),
          ),
        ),
      );
  }
}
