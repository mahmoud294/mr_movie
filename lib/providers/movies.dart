import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mr_movie/models/movie.dart';
import 'package:http/http.dart' as http;

class Movies with ChangeNotifier {
  // List<Movie> _moviesNow = [];
  // List<Movie> get moviesNow {
  //   return [..._moviesNow];
  // }

  List<Movie> _moviesLatest = [];
  List<Movie> get moviesLatest {
    return [..._moviesLatest];
  }

  Future<void> getLatest() async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=5cf33205931ff8d1516dfae71d75305e&language=en-US&page=1');
    try {
      final response = await http.get(url);
      final resData = json.decode(response.body) as Map<String, dynamic>;
      List<Movie> listMovies = [];
      resData.forEach((key, value) {
        if (key == 'results') {
          final test = value as List<dynamic>;
          test.forEach((element) {            
            listMovies.add(Movie(
                id: element['id'],
                imageLink: 'https://www.themoviedb.org/t/p/w220_and_h330_face' +
                    element['backdrop_path'],
                name: element['title']));
          });
           _moviesLatest = listMovies;
      
        notifyListeners();
        }
        
      });
    } catch (error) {
      print(error);
    }
  }
}
