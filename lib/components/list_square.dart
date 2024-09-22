import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/screens/actor_details.dart';

class ListSquare extends StatelessWidget {
  const ListSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ActorDetails(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
          child: ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/images/Profile.jpg'),
            ),
            title: Text(
              'Actor Name',
              style: GoogleFonts.montserrat(
                color: Colors.grey[800],
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
            subtitle: Text('Popularity: 42.53'),
            trailing: Icon(Icons.more_horiz_outlined),
          ),
        ),
      ),
    );
  }
}
