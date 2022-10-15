import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  final String title;

  const HeaderText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 20.0, 5.0, 0),
        child: Text(
          title,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w700, fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }
}
