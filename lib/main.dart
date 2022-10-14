import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff0f1f2),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Agro",
                      style: GoogleFonts.calistoga(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff07B803)),
                    ),
                    const Icon(Icons.notifications_outlined)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Image(
                              image: AssetImage('images/sun.png'),
                              width: 40,
                              height: 40,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Today",
                                  style: GoogleFonts.lato(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xff07B803)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "15 °C",
                                  style: GoogleFonts.lato(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff000000)),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "11:34,",
                                      style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xff000000)),
                                    ),
                                    Text(
                                      "(7:19 / 18:30)",
                                      style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xffDBDBDB)),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Icon(
                                        Icons.water_drop_outlined,
                                        color: Color(0xff68e1fd),
                                        size: 18,
                                      ),
                                      Text(
                                        "59%",
                                        style: GoogleFonts.lato(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff000000)),
                                      ),
                                    ]),
                                    Row(children: [
                                      Icon(
                                        Icons.water_drop_outlined,
                                        color: Color(0xff68e1fd),
                                        size: 18,
                                      ),
                                      Text(
                                        "6m/s",
                                        style: GoogleFonts.lato(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff000000)),
                                      ),
                                    ])
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          )),
        ));
  }
}
