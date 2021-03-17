import 'package:flutter/material.dart';
import 'package:mr_movie/providers/movies.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-first';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          child: Text('get'),
          onPressed: () {
            Provider.of<Movies>(context).getLatest();
          },
        ),
      ),
    );
  }
}
