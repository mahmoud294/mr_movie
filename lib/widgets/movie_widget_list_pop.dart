import 'package:flutter/material.dart';
import 'package:mr_movie/providers/movies.dart';
import 'package:mr_movie/widgets/movie_Item.dart';
import 'package:provider/provider.dart';

class MoviePopular extends StatefulWidget {
  @override
  _MoviePopularState createState() => _MoviePopularState();
}

class _MoviePopularState extends State<MoviePopular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: Provider.of<Movies>(context,listen: false).getpop(),
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
                          itemCount: value.moviesPop.length,
                          itemBuilder: (ctxx, index) => ChangeNotifierProvider.value(
                            value: value.moviesPop[index],
                            builder: (ctxxxx, child) => Container(padding: EdgeInsets.symmetric(horizontal: 6),child: MovieItem()),
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