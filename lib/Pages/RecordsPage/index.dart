import 'package:agroapp/Pages/RecordsPage/reports.dart';
import 'package:agroapp/Pages/RecordsPage/yieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordsPage extends StatefulWidget {
  const RecordsPage({super.key});

  @override
  State<RecordsPage> createState() => _RecordsPageState();
}

class _RecordsPageState extends State<RecordsPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff0f1f2),
        body: SingleChildScrollView(
          child: Column(children: const [
            //Title Container
            Align(
                alignment: Alignment.topLeft,
                child: Title(
                  title: 'Yield prediction',
                )),
            YieldPrediction(),
            Gap(10),
            Align(
                alignment: Alignment.topLeft,
                child: Title(title: "Latest Reports")),
            Gap(5),
            Reports()
          ]),
        ),
      ),
    );
  }
}

class Title extends StatefulWidget {
  const Title({super.key, required this.title});

  final String title;

  @override
  State<Title> createState() => _TitleState();
}

class _TitleState extends State<Title> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 0),
      child: Text(
        widget.title,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w900, fontSize: 16, color: Colors.black),
      ),
    );
  }
}
