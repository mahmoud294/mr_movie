import 'package:flutter/material.dart';
import 'package:mr_movie/widgets/movie_widget_list_pop.dart';
import 'package:mr_movie/widgets/movies_widget_list.dart';
import 'package:mr_movie/widgets/movies_widget_list_top.dart';

class MovieWidgetHome extends StatefulWidget {  
  @override
  _MovieWidgetHomeState createState() => _MovieWidgetHomeState();
}

class _MovieWidgetHomeState extends State<MovieWidgetHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(child: Container(child: MovieTop())),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      alignment: Alignment.centerLeft,
                      child: Text('Now Playing')),
                  Flexible(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MovieList(),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      alignment: Alignment.centerLeft,
                      child: Text('Popular')),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MoviePopular(),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
