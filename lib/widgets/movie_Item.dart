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
        Shadow(
          offset: Offset(0, 20),
          opacity: 0.1,
          scale: 0.9,
          child: Container(
            width: MediaQuery.of(context).size.width /3.7,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  '${movieItemData.imageLink}',
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Text(movieItemData.name),
        )
      ],
    );
  }
}
