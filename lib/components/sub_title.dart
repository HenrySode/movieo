import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitle extends StatelessWidget {
  final String text;
  const SubTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
