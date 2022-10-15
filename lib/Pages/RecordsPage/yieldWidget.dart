import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YieldPrediction extends StatelessWidget {
  const YieldPrediction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 30),
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: const Color(0xff000000),
              borderRadius: BorderRadius.circular(23),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    offset: const Offset(0, 10),
                    blurRadius: 5.0,
                    spreadRadius: 0)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("data"),
              Text("Data"),
            ],
          )),
    );
  }
}
