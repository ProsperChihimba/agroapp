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
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 20.0, 5.0, 0),
                  child: Text(
                    'Weather forecast',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ),
              const WeatherWidget(),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: ReportButtons(),
              )
            ],
          )),
        ));
  }
}

class ReportButtons extends StatelessWidget {
  const ReportButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Color(0xff1D976C),
                borderRadius: BorderRadius.circular(5)),
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
                      'Add Report',
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
                color: Color(0xff93F9B9),
                borderRadius: BorderRadius.circular(5)),
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

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
          padding: const EdgeInsets.all(40),
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
                        height: 10,
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const Icon(
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
                            const Icon(
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
    );
  }
}
