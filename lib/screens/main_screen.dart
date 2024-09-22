import 'package:flutter/material.dart';
import 'package:movie_app/screens/actors_list.dart';
import 'package:movie_app/screens/home.dart';
import 'package:movie_app/screens/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined), label: 'Movies'),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined), label: 'Actors'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: 16,
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red[800],
        selectedIconTheme: IconThemeData(color: Colors.red[800]),
        unselectedIconTheme: IconThemeData(color: Colors.grey[600]),
      ),
      body: _switchOnIndex(),
    );
  }

  _switchOnIndex() {
    switch (_currentIndex) {
      case 0:
        {
          return Home();
        }
      case 1:
        {
          return ActorsList();
        }
      case 2:
        {
          return Profile();
        }
    }
  }
}
