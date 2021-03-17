import 'package:flutter/material.dart';
import 'package:mr_movie/models/movie.dart';
import 'package:provider/provider.dart';

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
        Container(
          child: Image.network('${movieItemData.imageLink}'),
        ),
        Container(child: Text(movieItemData.name),)
      ],
    );
  }
}
