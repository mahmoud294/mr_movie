import 'package:flutter/material.dart';
import 'package:mr_movie/widgets/movieWidgetHome.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-first';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    MovieWidgetHome(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/MOVIES-hov.png'),
            icon: Image.asset('assets/MOVIES-def.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/TV SHOW-hov.png'),
            icon: Image.asset('assets/TV SHOW-def.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/PROFILE-hov.png'),
            icon: Image.asset('assets/PROFILE-def.png'),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
