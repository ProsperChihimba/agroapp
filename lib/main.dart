import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/MainPage/ReportButtons.dart';
import 'Pages/MainPage/WeatherWidget.dart';

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
              // Weather forecast widget
              const WeatherWidget(),
              const SizedBox(
                height: 40,
              ),
              // Add reports widgets
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: ReportButtons(),
              )
            ],
          )),
        ));
  }
}
