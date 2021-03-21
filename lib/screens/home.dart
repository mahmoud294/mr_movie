import 'package:flutter/material.dart';
import 'package:mr_movie/providers/movies.dart';
import 'package:mr_movie/widgets/movie_widget_list_pop.dart';
import 'package:mr_movie/widgets/movies_widget_list.dart';
import 'package:mr_movie/widgets/movies_widget_list_top.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-first';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
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
                      Expanded(
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
        ));
  }
}
