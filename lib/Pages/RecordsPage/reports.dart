import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 7.0, 0),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffE4ECFF),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            'P',
                            style: GoogleFonts.lato(
                                color: const Color(0xff143AFF),
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                  const Gap(5),
                  Column(
                    children: [
                      Text(
                        "Maize June",
                        style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xff000000)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3 Oct 2001",
                        style: GoogleFonts.lato(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 171, 171, 171)),
                      )
                    ],
                  )
                ],
              ),
              Text(
                "Tsh 10,000",
                style: GoogleFonts.lato(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff07B803)),
              ),
            ],
          )),
    );
  }
}
