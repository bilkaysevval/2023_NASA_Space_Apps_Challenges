import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_utilities/colors_utility.dart';
import 'package:nasa_space_spps_challenge/project_utilities/text_utility.dart';

import '../project_utilities/custom_animated_crossfade_widget.dart';
import '../project_utilities/custom_app_bar.dart';
import '../project_utilities/database_manager/for_hot_currents.dart';

class HotCurrentsPage extends StatefulWidget {
  const HotCurrentsPage({super.key});

  @override
  State<HotCurrentsPage> createState() => _HotCurrentsPageState();
}

class _HotCurrentsPageState extends State<HotCurrentsPage> {
  List hotResList = [];
  @override
  void initState() {
    super.initState();
    fetchHotList();
  }

  fetchHotList() async {
    dynamic list = await DatabaseManagerforHotCurrents().getHotList();
    if (list == null) {
      print(ProjectTexts.errorMessage);
    } else {
      setState(() {
        hotResList = list;
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
            title: ProjectTexts.hotCurrentsText,
          ),
        ),
        body: ListView(
          children: [
            _CustomAnimatedHotCurrentInfoWidget(
              hotResList: hotResList,
              title: HotCurrentsDatabaseTitles.alaska,
            ),
            _CustomAnimatedHotCurrentInfoWidget(
              hotResList: hotResList,
              title: HotCurrentsDatabaseTitles.brazil,
            ),
            _CustomAnimatedHotCurrentInfoWidget(
              hotResList: hotResList,
              title: HotCurrentsDatabaseTitles.east,
            ),
            _CustomAnimatedHotCurrentInfoWidget(
              hotResList: hotResList,
              title: HotCurrentsDatabaseTitles.gulfStream,
            ),
            _CustomAnimatedHotCurrentInfoWidget(
              hotResList: hotResList,
              title: HotCurrentsDatabaseTitles.kuroshio,
            ),
            _CustomAnimatedHotCurrentInfoWidget(
              hotResList: hotResList,
              title: HotCurrentsDatabaseTitles.mozambique,
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomAnimatedHotCurrentInfoWidget extends StatelessWidget {
  const _CustomAnimatedHotCurrentInfoWidget({
    super.key,
    required this.hotResList,
    required this.title,
  });

  final List hotResList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AnimatedInfo(
      first: title,
      second: hotResList.isEmpty ? title : hotResList[0][title],
      topColor: ColorsUtility.madang,
      bottomColor: ColorsUtility.vistaBlue,
    );
  }
}
