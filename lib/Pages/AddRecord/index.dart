import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({super.key});

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'New record',
          style: GoogleFonts.lato(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xff141517)),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_rounded),
          color: const Color(0xff000000),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 0),
            child: Form(
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Tafadhali jaza kiasi ulichopokea";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Kiasi ulichotumia",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff143AFF),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff9A9A9A))),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff9A9A9A))),
                        hintText: 'Jaza kiasi ulichotumia',
                        hintStyle: GoogleFonts.lato(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff9A9A9A))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff9A9A9A))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 55,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Jaza Taarifa ya ziada hapa (sio lazima)',
                        hintStyle: GoogleFonts.lato(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff9A9A9A))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff9A9A9A))),
                      ),
                    ),
                  ),

                  // Button
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff1D976C)),
                        ),
                        child: Center(
                            child: Text(
                          'Insert Record',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
