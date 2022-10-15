import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

import 'Pages/MainPage/HeaderText.dart';
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
              const Gap(10),
              const HeaderText(title: "Weather forecast"),
              // Weather forecast widget
              const WeatherWidget(),
              const Gap(
                40,
              ),
              // Add reports widgets
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: ReportButtons(),
              ),
              // Crop news filter section
              const Gap(
                30,
              ),
              const HeaderText(title: "Crop news")
            ],
          )),
        ));
  }
}
