import 'package:flutter/material.dart';
import 'package:mr_movie/models/movie.dart';
import 'package:http/http.dart' as http;

class Movies with ChangeNotifier {
  List<Movie> _moviesNow = [];
  List<Movie> get moviesNow {
    return [..._moviesNow];
  }

  List<Movie> _moviesLatest = [];
  List<Movie> get moviesLatest {
    return [..._moviesLatest];
  }

  Future<void> getLatest() async {
    const url =
        'https://api.themoviedb.org/3/movie/latest?api_key=5cf33205931ff8d1516dfae71d75305e&language=en-US';
    try {
      final response = await http.get(Uri(path: url));
      print(response);
    } catch (error) {
      print(error);
    }
  }
}
