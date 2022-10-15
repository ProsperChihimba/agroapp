import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List crops = ["All", "Maize", "Rice", "Potato", "Banana"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: crops.map(
              (data) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: data == "All"
                          ? const Color(0xffd2ddf7)
                          : const Color(0xffdbd9d9),
                    ),
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 10),
                    // margin: const EdgeInsets.all(0.5),
                    child: Text(data,
                        style: GoogleFonts.lato(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff000000))),
                  ),
                );
              },
            ).toList()),
      ),
    );
  }
}
