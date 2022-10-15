import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class YieldPrediction extends StatefulWidget {
  const YieldPrediction({super.key});

  @override
  State<YieldPrediction> createState() => _YieldPredictionState();
}

class _YieldPredictionState extends State<YieldPrediction> {
  List crops = ["All", "Maize", "Rice", "Potato", "Banana"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.20,
        child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: crops.map(
              (data) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: data == "All"
                            ? const Color(0xffd2ddf7)
                            : const Color(0xffdbd9d9),
                      ),
                      padding:
                          const EdgeInsets.only(left: 80, right: 80, top: 50),
                      // margin: const EdgeInsets.all(0.5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              data,
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            Gap(10),
                            Text(
                              "Ton: 200",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      )),
                );
              },
            ).toList()),
      ),
    );
  }
}
