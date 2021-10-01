import 'package:flutter/material.dart';
import 'package:wally_app/constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBckgroundColor,
        body: const Center(
          child: Text(
            'Download',
          ),
        ),
      ),
    );
  }
}
