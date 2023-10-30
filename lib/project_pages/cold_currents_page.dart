import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_utilities/colors_utility.dart';
import 'package:nasa_space_spps_challenge/project_utilities/custom_animated_crossfade_widget.dart';
import 'package:nasa_space_spps_challenge/project_utilities/database_manager/for_cold_currents.dart';
import 'package:nasa_space_spps_challenge/project_utilities/text_utility.dart';

import '../project_utilities/custom_app_bar.dart';

class ColdCurrentsPage extends StatefulWidget {
  const ColdCurrentsPage({super.key});

  @override
  State<ColdCurrentsPage> createState() => _ColdCurrentsPageState();
}

class _ColdCurrentsPageState extends State<ColdCurrentsPage> {
  List coldResList = [];
  @override
  void initState() {
    super.initState();
    fetchColdList();
  }

  fetchColdList() async {
    dynamic list = await DatabaseManagerforColdCurrents().getColdList();
    if (list == null) {
      print(ProjectTexts.errorMessage);
    } else {
      setState(() {
        coldResList = list;
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
            title: ProjectTexts.coldCurrentsText,
          ),
        ),
        body: ListView(
          children: [
            _CustomAnimatedColdCurrentInfoWidget(
              coldResList: coldResList,
              title: ColdCurrentsDatabaseTitles.benguela,
            ),
            _CustomAnimatedColdCurrentInfoWidget(
              coldResList: coldResList,
              title: ColdCurrentsDatabaseTitles.california,
            ),
            _CustomAnimatedColdCurrentInfoWidget(
              coldResList: coldResList,
              title: ColdCurrentsDatabaseTitles.canary,
            ),
            _CustomAnimatedColdCurrentInfoWidget(
              coldResList: coldResList,
              title: ColdCurrentsDatabaseTitles.humboldt,
            ),
            _CustomAnimatedColdCurrentInfoWidget(
              coldResList: coldResList,
              title: ColdCurrentsDatabaseTitles.labrador,
            ),
            _CustomAnimatedColdCurrentInfoWidget(
              coldResList: coldResList,
              title: ColdCurrentsDatabaseTitles.west,
            ),
            _CustomAnimatedColdCurrentInfoWidget(
              coldResList: coldResList,
              title: ColdCurrentsDatabaseTitles.oyashio,
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomAnimatedColdCurrentInfoWidget extends StatelessWidget {
  const _CustomAnimatedColdCurrentInfoWidget({
    super.key,
    required this.coldResList,
    required this.title,
  });

  final List coldResList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AnimatedInfo(
      first: title,
      second: coldResList.isEmpty ? title : coldResList[0][title],
      topColor: ColorsUtility.madang,
      bottomColor: ColorsUtility.vistaBlue,
    );
  }
}
