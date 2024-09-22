import 'package:flutter/material.dart';
import 'package:movie_app/components/app_bar_title.dart';
import 'package:movie_app/components/menu_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: AppBarTitle(
          title1: 'Profile',
          title2: '.',
        ),
        actions: [MenuButton()],
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 40,
          ),
          // UserAvatar(
          //   size: 100,
          // ),
          Icon(
            Icons.person,
            size: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Username',
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Email',
          ),
          SizedBox(
            height: 24,
          ),

          Divider(
            thickness: 1,
            height: 50,
          ),
        ],
      ),
    );
  }
}
