import 'package:flutter/material.dart';
import 'package:mr_movie/providers/movies.dart';
import 'package:mr_movie/widgets/movie_Item.dart';
import 'package:provider/provider.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {       
    return FutureBuilder(
      future: Provider.of<Movies>(context,listen: false).getLatest(),
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
                        // primary: false,
                        itemCount: value.moviesLatest.length,
                        itemBuilder: (ctxx, index) => ChangeNotifierProvider.value(
                          value: value.moviesLatest[index],
                          builder: (ctxxxx, child) => MovieItem(),
                        ),
                      );
                    }
                  ),
                );
      },
    );
  }
}
