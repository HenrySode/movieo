import 'package:flutter/material.dart';
import 'package:movie_app/components/buttons.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  // void getStarted() {
  //   Navigator.of(context).pushReplacementNamed('login');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(
                Icons.camera,
                size: 100,
                color: Colors.grey[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Keep your mind fresh',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'and clean',
                style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'All best movies in single click',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonComponent(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('login');
                },
                text: 'Get started'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
