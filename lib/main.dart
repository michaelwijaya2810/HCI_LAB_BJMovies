import 'package:flutter/material.dart';
import 'package:bj_movies/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        // '/login' : (BuildContext context) =>
        // '/home' : (BuildContext context) =>
        // '/aboutUs' : (BuildContext context) =>
        // '/movieDetail' : (BuildContext context) =>
      },
    );
  }
}
