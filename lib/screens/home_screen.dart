import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/screens/categories_screen.dart';
import 'package:wally_app/screens/download_screen.dart';
import 'package:wally_app/screens/lateat_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List iconsBottomNavigationBar = [
    'assets/icons/home.svg',
    'assets/icons/category.svg',
    'assets/icons/download.svg'
  ];

  List pages = [
    const LateatScreen(),
    const CategoriesScreen(),
    const DownloadScreen()
  ];

  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBckgroundColor,
        body: pages[selectedPage],
        bottomNavigationBar: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          height: 50,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                iconsBottomNavigationBar.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPage = index;
                    });
                  },
                  child: SvgPicture.asset(
                    iconsBottomNavigationBar[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
