import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashHandel();
  }

  splashHandel() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/image-background.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    'Welcome to',
                    style: GoogleFonts.poppins(
                        color: kTitleColor, fontSize: size.width * 0.025),
                  ),
                ),
                Text(
                  'Walley',
                  style: GoogleFonts.poppins(
                      fontSize: size.width * 0.1,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = kGradientTextColor),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              child: Text(
                'Find Wallpapers of your choice',
                style: GoogleFonts.poppins(
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.w600,
                  color: kTextColor.withOpacity(.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
