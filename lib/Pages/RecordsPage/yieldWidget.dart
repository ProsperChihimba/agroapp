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
                color: const Color.fromARGB(255, 74, 73, 73).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Data"),
              Text("Data"),
            ],
          )),
    );
  }
}
