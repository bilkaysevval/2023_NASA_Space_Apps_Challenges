import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_utilities/text_utility.dart';

import 'colors_utility.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: ColorsUtility.vistaBlue),
      centerTitle: true,
      title: TextUtility(
        txt: title,
        size: 20,
        color: ColorsUtility.vistaBlue,
        fw: FontWeight.w500,
      ),
      backgroundColor: ColorsUtility.daintree,
      elevation: 5,
    );
  }
}
