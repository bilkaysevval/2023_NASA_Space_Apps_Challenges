import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_pages/water_page.dart';

import '../project_utilities/colors_utility.dart';
import '../project_utilities/custom_app_bar.dart';
import '../project_utilities/images_utility.dart';
import '../project_utilities/text_utility.dart';
import 'animals_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.065),
          child: const CustomAppBar(
            title: ProjectTexts.whatsUpwithThisWaterText,
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  stops: [0.25, 0.75],
                  colors: [
                    ColorsUtility.daintree,
                    ColorsUtility.matisse,
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WaterPage(),
                      ));
                },
                child: Column(
                  children: [
                    Image.asset(
                      HomePageImagesPaths.waterDroplet,
                    ),
                    const TextUtility(
                        txt: ProjectTexts.waterText,
                        color: ColorsUtility.vistaBlue,
                        size: 30,
                        fw: FontWeight.normal)
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              right: 30,
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.3,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AnimalsPage(),
                      ));
                },
                child: Column(
                  children: [
                    Image.asset(
                      HomePageImagesPaths.dolphinHome,
                    ),
                    const TextUtility(
                        txt: ProjectTexts.animalsText,
                        color: ColorsUtility.vistaBlue,
                        size: 30,
                        fw: FontWeight.normal)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
