import 'package:flutter/material.dart';
import 'package:mr_movie/models/movie.dart';
import 'package:provider/provider.dart';
import 'package:shadow/shadow.dart';

class MovieTopItem extends StatelessWidget {
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
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width -16,
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