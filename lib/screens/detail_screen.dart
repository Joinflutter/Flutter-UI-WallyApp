import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';

class DetailScreen extends StatefulWidget {
  final wallpaper;
  const DetailScreen({Key? key, required this.wallpaper}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBckgroundColor,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Hero(
              tag: widget.wallpaper.id,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  widget.wallpaper.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                right: size.width * 0.05,
                top: size.height * 0.02,
                bottom: size.height * 0.03,
              ),
              width: double.infinity,
              height: size.height * 0.23,
              decoration: const BoxDecoration(
                color: Color(0xff1B1B1B),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Landscape',
                    style: GoogleFonts.poppins(
                      color: kTitleColor,
                      fontSize: size.width * 0.052,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      detailButtonData(
                        onTap: () {},
                        name: 'Save',
                        size: size,
                        icon: 'assets/icons/download.svg',
                      ),
                      detailButtonData(
                        onTap: () {},
                        name: 'Favorite',
                        size: size,
                        icon: 'assets/icons/favorate.svg',
                      ),
                      detailButtonData(
                        onTap: () {},
                        name: 'Set',
                        size: size,
                        icon: 'assets/icons/image.svg',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailButtonData({size, icon, name, required onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(icon),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Text(
              name,
              style: GoogleFonts.poppins(
                color: kTitleColor,
                fontSize: size.width * 0.035,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
