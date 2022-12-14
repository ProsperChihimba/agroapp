import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordAppBar extends StatefulWidget {
  const RecordAppBar({super.key});

  @override
  State<RecordAppBar> createState() => _RecordAppBarState();
}

class _RecordAppBarState extends State<RecordAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 22.0, 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_rounded),
          color: Color(0xff000000),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Ripoti ya mzunguko wa kilimo',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Color(0xff07B803)),
            ),
            const Gap(1),
            Text(
              "29-10-2022",
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Color(0xff9A9A9A)),
            ),
          ],
        ),
      ]),
    );
  }
}
