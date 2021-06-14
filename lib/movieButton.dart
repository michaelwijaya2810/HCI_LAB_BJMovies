import 'package:flutter/material.dart';

class MovieButton extends StatelessWidget {
  final String imageLoc;
  final String movieTitle;
  final String movieCat;

  MovieButton({this.imageLoc, this.movieTitle, this.movieCat});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              width: 148,
              height: 220,
              child: Image.asset(imageLoc),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text(
              movieTitle,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 3)),
            Text(
              movieCat,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        width: 148,
      ),
      onTap: () {
        Navigator.of(context).pushNamed('movieDetail');
      },
    );
  }
}
