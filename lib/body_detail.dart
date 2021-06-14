import 'package:flutter/material.dart';

class BodyDetail extends StatefulWidget {
  @override
  _BodyDetailState createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FittedBox(
              fit: BoxFit.contain,
              child: Image(image: AssetImage('assets/spiderman.jpeg'))),
        ),
        Text(
          'Spider-Man: Far From Home',
          style:
              TextStyle(height: 5, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text('Action, Adventure, Sci-Fi'),
        Text(
          'Synopsis',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          width: 400,
          child: new Text(
              'Our friendly neighborhood Super Hero decides to join his best friends Ned, MJ, and the rest of the gang on a European vacation. However, Peter plan to leave super heroics behind for a few weeks are quickly scrapped when he begrudgingly agrees to help Nick Fury uncover the mystery of several elemental creature attacks, creating havoc across the continent.'),
          alignment: Alignment.center,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Write your review about this movie here....',
          ),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Write your review about this movie here....';
            }
            return null;
          },
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: ElevatedButton(onPressed: null, child: null)),
      ],
    );
  }
}
