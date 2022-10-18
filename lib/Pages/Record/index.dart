import 'package:agroapp/Pages/Record/appBar.dart';
import 'package:agroapp/Pages/Record/recordTable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [RecordAppBar(), Gap(30), RecordTable()],
          ),
        ),
      ),
    );
  }
}
