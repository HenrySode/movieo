import 'package:flutter/material.dart';
import 'package:movie_app/screens/actors_list.dart';
import 'package:movie_app/screens/home.dart';
import 'package:movie_app/screens/login.dart';
import 'package:movie_app/screens/main_screen.dart';
import 'package:movie_app/screens/profile.dart';
import 'package:movie_app/screens/register.dart';
import 'package:movie_app/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => Welcome(),
        "login": (context) => Login(),
        "register": (context) => Register(),
        "main": (context) => MainScreen(),
        "home": (context) => Home(),
        "actors": (context) => ActorsList(),
        "profile": (context) => Profile(),
      },
    );
  }
}
