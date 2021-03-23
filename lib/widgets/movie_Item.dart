import 'package:flutter/material.dart';
import 'package:mr_movie/models/movie.dart';
import 'package:provider/provider.dart';
import 'package:shadow/shadow.dart';

class MovieItem extends StatefulWidget {
  @override
  _MovieItemState createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  @override
  Widget build(BuildContext context) {
    final movieItemData = Provider.of<Movie>(context);
    return Column(
      children: [
        Flexible(
          flex: 4,
          child: Shadow(
            offset: Offset(0, 20),
            opacity: 0.1,
            scale: 0.9,
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: FadeInImage.assetNetwork(
                    fadeOutDuration: Duration(seconds: 3),
                    placeholder: 'assets/place.jpg',
                    image: '${movieItemData.imageLink}',
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            width: 155,
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              movieItemData.name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
