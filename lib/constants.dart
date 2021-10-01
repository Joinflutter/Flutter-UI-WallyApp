import 'package:flutter/material.dart';

Color kBckgroundColor = const Color(0xff202020);
Color kTextColor = const Color(0xffB0FFA3);
Color kTitleColor = const Color(0xffffffff);
Shader? kGradientTextColor = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xff8AFF80),
    Color(0xffCFFF81),
  ],
).createShader(
  const Rect.fromLTRB(0, 20, 0, 20),
);
