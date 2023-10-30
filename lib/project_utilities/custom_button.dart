import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_utilities/text_utility.dart';

import '../project_pages/how_to_protect_page.dart';
import 'colors_utility.dart';

class CustomButtonwithContainer extends StatefulWidget {
  const CustomButtonwithContainer({super.key});

  @override
  State<CustomButtonwithContainer> createState() =>
      _CustomButtonwithContainerState();
}

class _CustomButtonwithContainerState extends State<CustomButtonwithContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HowToProtect(),
          )),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          gradient: RadialGradient(
              focal: Alignment.center,
              focalRadius: 3,
              colors: [ColorsUtility.daintree, ColorsUtility.matisse]),
        ),
        width: MediaQuery.of(context).size.width,
        child: ListTile(
          title: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Center(
              child: TextUtility(
                  txt: ProjectTexts.howtoProtectText,
                  color: ColorsUtility.vistaBlue,
                  size: 17,
                  fw: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
