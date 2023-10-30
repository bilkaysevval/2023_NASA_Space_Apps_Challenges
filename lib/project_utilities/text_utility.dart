import 'package:flutter/material.dart';

class TextUtility extends StatelessWidget {
  const TextUtility(
      {super.key,
      required this.txt,
      required this.color,
      required this.size,
      required this.fw});

  final String txt;
  final Color color;
  final double size;
  final FontWeight fw;

  @override
  Widget build(BuildContext context) {
    return Text(txt,
        style: TextStyle(color: color, fontSize: size, fontWeight: fw));
  }
}

class ProjectTexts {
  static const String whatsUpwithThisWaterText = "What's Up With This Water?";
  static const String madeForNASAText = "made for NASA Space Apps Challenge";
  static const String animalsText = "Animals";
  static const String waterText = "Water";
  static const String howtoProtectText = "How to Protect Us?";
  static const String errorMessage =
      "unable to fetch the data from the database";
  static const String coldCurrentsText = "Cold Currents";
  static const String hotCurrentsText = "Hot Currents";
  static const String currentsText = "Currents";
  static const String learnAboutButtonText = "Learn About";
}
