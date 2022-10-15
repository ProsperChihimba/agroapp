import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordsPage extends StatefulWidget {
  const RecordsPage({super.key});

  @override
  State<RecordsPage> createState() => _RecordsPageState();
}

class _RecordsPageState extends State<RecordsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          //Title Container
          const Title()
        ]),
      ),
    );
  }
}

class Title extends StatefulWidget {
  const Title({super.key});

  @override
  State<Title> createState() => _TitleState();
}

class _TitleState extends State<Title> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Historia ya ripoti',
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w800, fontSize: 16, color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selectedDate.toIso8601String().split('T').first,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color(0xff9A9A9A),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(1.0, 0, 0, 0),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25,
                  color: Color(0xff143AFF),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
