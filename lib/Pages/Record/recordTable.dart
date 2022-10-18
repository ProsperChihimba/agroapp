import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordTable extends StatefulWidget {
  const RecordTable({super.key});

  @override
  State<RecordTable> createState() => _RecordTableState();
}

class _RecordTableState extends State<RecordTable> {
  List records = ["Hello", "Hello", "Hello", "Hello"];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0xffEBFFEF),
              ),
              borderRadius: BorderRadius.circular(6)),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                  TableCell(
                    child: Container(
                        height: 60,
                        width: 32,
                        color: Color(0xffEBFFEF),
                        child: Center(
                          child: Text(
                            'Tarehe',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  ),
                  TableCell(
                    child: Container(
                        height: 60,
                        width: 32,
                        color: Color(0xffEBFFEF),
                        child: Center(
                          child: Text(
                            'Matumizi',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  ),
                  TableCell(
                    child: Container(
                        height: 60,
                        width: 32,
                        color: Color(0xffEBFFEF),
                        child: Center(
                          child: Text(
                            'Kiasi',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  ),
                ],
              ),
              if (records.isNotEmpty)
                ...records.map(
                  (data) {
                    return TableRow(
                      decoration: BoxDecoration(
                        color: records.indexOf(data) % 2 == 0
                            ? Color(0xffFFFFFF)
                            : Color(0xffE4ECFF),
                      ),
                      children: <Widget>[
                        TableCell(
                          child: Container(
                              height: 50,
                              width: 32,
                              child: Center(
                                child: Text(
                                  "Hello",
                                  style: GoogleFonts.montserrat(),
                                ),
                              )),
                        ),
                        TableCell(
                          child: Container(
                              height: 50,
                              width: 32,
                              child: Center(
                                child: Text(
                                  "Hello",
                                  style: GoogleFonts.montserrat(),
                                ),
                              )),
                        ),
                        TableCell(
                          child: Container(
                              height: 50,
                              width: 32,
                              child: Center(
                                child: Text(
                                  '',
                                  style: GoogleFonts.montserrat(),
                                ),
                              )),
                        ),
                      ],
                    );
                  },
                ),
              TableRow(
                children: <Widget>[
                  TableCell(
                    child: Container(
                        height: 50,
                        width: 32,
                        color: Color(0xffFFFFFF),
                        child: Center(
                          child: Text(
                            'Jumla',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                        )),
                  ),
                  TableCell(
                    child: Container(
                        height: 50,
                        width: 32,
                        color: Color(0xffFFFFFF),
                        child: Center(
                          child: Text(
                            "Hello",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                        )),
                  ),
                  TableCell(
                    child: Container(
                        height: 50,
                        width: 32,
                        color: Color(0xffFFFFFF),
                        child: Center(
                          child: Text(
                            "Hello",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
