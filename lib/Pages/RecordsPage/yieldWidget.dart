import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class YieldPrediction extends StatelessWidget {
  const YieldPrediction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: const Color(0xff000000),
              borderRadius: BorderRadius.circular(23),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    offset: const Offset(0, 6),
                    blurRadius: 5.0,
                    spreadRadius: 0)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Maindi",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Text(
                    "20,000 tons",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ],
              ),
              const Gap(35),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Tsh 200,000/=",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              const Gap(35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3 Spt 2022",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
