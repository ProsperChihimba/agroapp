import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportButtons extends StatelessWidget {
  const ReportButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: const Color(0xff1D976C),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Add Record',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: const Color(0xff93F9B9),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Update Report',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
