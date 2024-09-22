import 'package:flutter/material.dart';
import 'package:movie_app/components/app_bar_title.dart';
import 'package:movie_app/components/list_square.dart';
import 'package:movie_app/components/menu_button.dart';

class ActorsList extends StatelessWidget {
  const ActorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: AppBarTitle(
            title1: 'Actors',
            title2: '.',
          ),
          actions: [MenuButton()],
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListSquare();
            }));
  }
}
