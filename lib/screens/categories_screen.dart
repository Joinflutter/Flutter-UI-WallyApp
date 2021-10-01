import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

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
            'Categories',
            style: GoogleFonts.poppins(
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
              color: kTitleColor.withOpacity(0.5),
              fontSize: size.width * 0.05,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.08,
            vertical: size.height * 0.02,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/art.png'),
                  ),
                ),
                child: Text(
                  'Art',
                  style: GoogleFonts.poppins(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: kTitleColor,
                    fontSize: size.width * 0.07,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
