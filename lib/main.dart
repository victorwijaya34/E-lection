import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'DaftarPage.dart';
import 'LupaPage.dart';
import 'HomePage.dart';
import 'HomePageAdmin.dart';
import 'InfoCalon.dart';
import 'InfoDetail.dart';
import 'InfoDetail2.dart';
import 'VisiPage.dart';
import 'MisiPage.dart';
import 'ProgramPage.dart';
import 'Timeline.dart';
import 'BilikSuara.dart';
import 'PilihCalon.dart';
import 'Memilih.dart';
import 'Memilih2.dart';
import 'ProfilePage.dart';
import 'EditProfile.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-lection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.teal,
      ),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        LupaPage.id: (context) => LupaPage(),
        DaftarPage.id: (context) => DaftarPage(),
        HomePage.id: (context) => HomePage(),
        HomePageAdmin.id: (context) => HomePageAdmin(),
        InfoCalon.id: (context) => InfoCalon(),
        InfoDetail.id: (context) => InfoDetail(),
        InfoDetail2.id: (context) => InfoDetail2(),
        VisiPage.id: (context) => VisiPage(),
        MisiPage.id: (context) => MisiPage(),
        ProgramPage.id: (context) => ProgramPage(),
        Timeline.id: (context) => Timeline(),
        BilikSuara.id: (context) => BilikSuara(),
        PilihCalon.id: (context) => PilihCalon(),
        Memilih.id: (context) => Memilih(),
        Memilih2.id: (context) => Memilih2(),
        ProfilePage.id: (context) => ProfilePage(),
        EditProfile.id: (context) => EditProfile(),
      },
    );
  }
}



