import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBckgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kBckgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Latest',
            style: GoogleFonts.poppins(
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
              color: kTitleColor.withOpacity(0.5),
              fontSize: size.width * 0.05,
            ),
          ),
        ),
      ),
    );
  }
}
