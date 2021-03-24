import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mr_movie/models/movie.dart';
import 'package:http/http.dart' as http;
import 'package:mr_movie/providers/key.dart';

class Movies with ChangeNotifier {
  List<Movie> _moviesPop = [];
  List<Movie> get moviesPop {
    return [..._moviesPop];
  }
  String idToken=Keys().idKey;
  List<Movie> _moviesTop = [];
  List<Movie> get moviesTop {
    return [..._moviesTop];
  }

  List<Movie> _moviesLatest = [];
  List<Movie> get moviesLatest {
    return [..._moviesLatest];
  }

  Future<void> getLatest() async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=$idToken&language=en-US&page=1');
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

  Future<void> getpop() async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=$idToken&language=en-US&page=1');
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
          _moviesPop = listMovies;

          notifyListeners();
        }
      });
    } catch (error) {
      print(error);
    }
  }

  Future<void> getTop() async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=$idToken&language=en-US&page=1');
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
                imageLink: 'https://www.themoviedb.org/t/p/w1920_and_h800_multi_faces' +
                    element['backdrop_path'],
                name: element['title']));
          });
          _moviesTop = listMovies;

          notifyListeners();
        }
      });
    } catch (error) {
      print(error);
    }
  }
}
