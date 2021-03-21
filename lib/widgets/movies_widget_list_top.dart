import 'package:flutter/material.dart';
import 'package:mr_movie/providers/movies.dart';
import 'package:mr_movie/widgets/movie_top_item.dart';
import 'package:provider/provider.dart';

class MovieTop extends StatefulWidget {
  @override
  _MovieTopState createState() => _MovieTopState();
}

class _MovieTopState extends State<MovieTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: Provider.of<Movies>(context,listen: false).getTop(),
        builder: (ctx, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting)
                 return Center(
                    child: CircularProgressIndicator(),
                  );
                 return Container(
                    child: Consumer<Movies>(                                        
                      builder: (ctxxxxx, value, child)  {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          primary: false,
                          itemCount: value.moviesTop.length,
                          itemBuilder: (ctxx, index) => ChangeNotifierProvider.value(
                            value: value.moviesTop[index],
                            builder: (ctxxxx, child) => Container(padding: EdgeInsets.symmetric(horizontal: 6),child: MovieTopItem()),
                          ),
                        );
                      }
                    ),
                  );
        },
      ),
    );
  }
}