import 'package:bj_movies/customCarousel.dart';
import 'package:bj_movies/movieButton.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        CustomCarousel(
          items: [
            './assets/doraemon.jpeg',
            './assets/spiderman.jpeg',
            './assets/angelhasfallen.jpeg',
            './assets/mib.jpeg',
            './assets/friend_zone.jpeg',
            './assets/parasite.jpeg',
          ],
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'New Movies',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/angelhasfallen.jpeg',
                  movieTitle: 'Angel Has Fallen',
                  movieCat: 'Action, Thriller',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                MovieButton(
                  imageLoc: './assets/mib.jpeg',
                  movieTitle: 'Men In Black: International',
                  movieCat: 'Action, Adventure, Comedy',
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/friend_zone.jpeg',
                  movieTitle: 'Friend Zone',
                  movieCat: 'Comedy, Romance',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                MovieButton(
                  imageLoc: './assets/doraemon.jpeg',
                  movieTitle:
                      'Doraemon: Nobita\'s Chronicle of the Moon Exploration',
                  movieCat: 'Sci-Fi, Anime',
                ),
              ],
            ),
          ],
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Most Popular',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/avenger_edited.jpeg',
                  movieTitle: 'Avengers: Endgame',
                  movieCat: 'Action, Adventure, Drama',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                MovieButton(
                  imageLoc: './assets/parasite.jpeg',
                  movieTitle: 'Parasite',
                  movieCat: 'Comedy, Drama, Thriller',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/spiderman.jpeg',
                  movieTitle: 'Spider-Man: Far From Home',
                  movieCat: 'Action, Adventure, Sci-Fi',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                MovieButton(
                  imageLoc: './assets/c_marvel_edited.jpeg',
                  movieTitle: 'Captain Marvel',
                  movieCat: 'Action, Adventure, Drama',
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/alladin.jpeg',
                  movieTitle: 'Aladdin',
                  movieCat: 'Adventure, Family, Fantasy',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                Container(
                  width: 148,
                  height: 220,
                  decoration: BoxDecoration(color: Color(0xffffffcc)),
                )
              ],
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 100.0))
      ]),
    );
  }
}
