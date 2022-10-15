import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import 'package:agroapp/Pages/MainPage/News.dart';
import 'package:agroapp/Pages/MainPage/NewsList.dart';
import 'package:agroapp/Pages/MainPage/HeaderText.dart';
import 'package:agroapp/Pages/MainPage/ReportButtons.dart';
import 'package:agroapp/Pages/MainPage/WeatherWidget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff0f1f2),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                // decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Agro",
                      style: GoogleFonts.calistoga(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff07B803)),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.notifications_none_outlined),
                        Gap(10),
                        Icon(Icons.account_circle_outlined),
                      ],
                    )
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
              const HeaderText(title: "Crop news"),
              const Gap(
                10,
              ),
              const NewsList(),
              const Gap(25),
              const News()
            ],
          )),
        ));
  }
}
