import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'DaftarPage.dart';
import 'LupaPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    DaftarPage.tag: (context) => DaftarPage(),
    LupaPage.tag: (context) => LupaPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-lection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.teal,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}



