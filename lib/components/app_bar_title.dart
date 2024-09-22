import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitle extends StatelessWidget {
  final String title1;
  final String title2;
  const AppBarTitle({
    super.key,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title1,
          style: GoogleFonts.montserrat(
            color: Colors.grey[800],
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),
        ),
        Text(
          title2,
          style: GoogleFonts.montserrat(
            color: Colors.red[800],
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
