import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List cropNews = ["All", "Maize", "Rice", "Potato", "Banana"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 13),
        child: GridView.count(
          primary: false,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: (152 / 70),
          physics: const NeverScrollableScrollPhysics(),
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: cropNews.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Hello",
                      style: GoogleFonts.lato(
                          color: Color(0xff143AFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 5.0, 0),
                        child: Text(
                          'Tshs',
                          style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9A9A9A)),
                        ),
                      ),
                      Text(
                        "Hello",
                        style: GoogleFonts.lato(
                            color: Color(0xff3F4142),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
