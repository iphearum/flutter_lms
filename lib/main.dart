import 'package:flutter/material.dart';
import 'package:noober/login_screen.dart';
import 'package:noober/HomeScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),// homepage
      home: MyHomePageState(),//login
    );
  }
}
