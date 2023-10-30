import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_pages/cold_currents_page.dart';
import 'package:nasa_space_spps_challenge/project_utilities/colors_utility.dart';
import 'package:nasa_space_spps_challenge/project_utilities/text_utility.dart';

import '../project_utilities/custom_app_bar.dart';
import 'hot_currents_page.dart';

class WaterPage extends StatefulWidget {
  const WaterPage({super.key});

  @override
  State<WaterPage> createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.065),
          child: const CustomAppBar(
            title: ProjectTexts.currentsText,
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _CustomWaterPageCard(
                pageName: ColdCurrentsPage(),
                title: ProjectTexts.coldCurrentsText,
              ),
              _CustomWaterPageCard(
                pageName: HotCurrentsPage(),
                title: ProjectTexts.hotCurrentsText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomWaterPageCard extends StatelessWidget {
  const _CustomWaterPageCard({
    super.key,
    required this.pageName,
    required this.title,
  });

  final Widget pageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => pageName,
            ));
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorsUtility.vistaBlue,
                ColorsUtility.madang,
              ]),
        ),
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Center(
            child: TextUtility(
                txt: title,
                color: ColorsUtility.daintree,
                size: 30,
                fw: FontWeight.w600)),
      ),
    );
  }
}
