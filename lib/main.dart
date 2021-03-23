import 'package:flutter/material.dart';
import 'package:mr_movie/providers/movies.dart';
import 'package:mr_movie/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Movies())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(backgroundColor: Colors.white,elevation: 0,)
        ),
        home: HomeScreen(),
      ),
    );
  }
}
