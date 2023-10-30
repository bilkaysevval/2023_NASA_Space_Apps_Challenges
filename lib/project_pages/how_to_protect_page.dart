import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_utilities/colors_utility.dart';
import 'package:nasa_space_spps_challenge/project_utilities/custom_animated_crossfade_widget.dart';
import 'package:nasa_space_spps_challenge/project_utilities/database_manager/for_protect_page.dart';
import 'package:nasa_space_spps_challenge/project_utilities/text_utility.dart';

import '../project_utilities/custom_app_bar.dart';

class HowToProtect extends StatefulWidget {
  const HowToProtect({super.key});

  @override
  State<HowToProtect> createState() => _HowToProtectState();
}

class _HowToProtectState extends State<HowToProtect> {
  List protectResList = [];

  @override
  void initState() {
    super.initState();
    fetchProtectList();
  }

  fetchProtectList() async {
    dynamic list = await DatabaseManagerforProtect().getProtectList();
    if (list == null) {
      print(ProjectTexts.errorMessage);
    } else {
      setState(() {
        protectResList = list;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.065),
        child: const CustomAppBar(
          title: ProjectTexts.howtoProtectText,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          _CustomAnimatedProtectInfoWidget(
            protectResList: protectResList,
            title: HowToProtectDatabaseTitles.climateChange,
          ),
          _CustomAnimatedProtectInfoWidget(
            protectResList: protectResList,
            title: HowToProtectDatabaseTitles.coastal,
          ),
          _CustomAnimatedProtectInfoWidget(
            protectResList: protectResList,
            title: HowToProtectDatabaseTitles.industrial,
          ),
          _CustomAnimatedProtectInfoWidget(
            protectResList: protectResList,
            title: HowToProtectDatabaseTitles.poaching,
          ),
          _CustomAnimatedProtectInfoWidget(
            protectResList: protectResList,
            title: HowToProtectDatabaseTitles.ship,
          ),
          _CustomAnimatedProtectInfoWidget(
            protectResList: protectResList,
            title: HowToProtectDatabaseTitles.fishing,
          ),
          _CustomAnimatedProtectInfoWidget(
            protectResList: protectResList,
            title: HowToProtectDatabaseTitles.nets,
          ),
        ],
      ),
    ));
  }
}

class _CustomAnimatedProtectInfoWidget extends StatelessWidget {
  const _CustomAnimatedProtectInfoWidget({
    super.key,
    required this.protectResList,
    required this.title,
  });

  final List protectResList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AnimatedInfo(
      first: title,
      second: protectResList.isEmpty ? title : protectResList[0][title],
      topColor: ColorsUtility.vistaBlue,
      bottomColor: ColorsUtility.matisse,
    );
  }
}
