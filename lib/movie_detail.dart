import 'package:flutter/material.dart';
import 'package:movie_detail/body_detail.dart';

void main() {
  runApp(Movie());
}

class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop()),
          backgroundColor: Color(0xffDBA13B)),
      body: BodyDetail(),
      backgroundColor: Color(0xffffffcc),
    );
  }
}
