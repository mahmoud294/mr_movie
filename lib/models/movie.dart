import 'package:flutter/material.dart';

class Movie with ChangeNotifier {
  int id;
  String name;
  String imageLink;
  Movie({this.id, this.imageLink, this.name});
}
