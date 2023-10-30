import 'package:flutter/material.dart';

import 'colors_utility.dart';
import 'custom_animated_crossfade_widget.dart';

class CustomAnimatedAnimalInfoWidget extends StatelessWidget {
  const CustomAnimatedAnimalInfoWidget({
    super.key,
    required this.animalsResList,
    required this.title,
    required this.animalNum,
  });

  final List animalsResList;
  final String title;
  final int animalNum;

  @override
  Widget build(BuildContext context) {
    return AnimatedInfo(
      first: title,
      second: animalsResList.isEmpty ? title : animalsResList[animalNum][title],
      topColor: ColorsUtility.vistaBlue,
      bottomColor: ColorsUtility.matisse,
    );
  }
}
