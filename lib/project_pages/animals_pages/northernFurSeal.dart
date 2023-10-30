import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_pages/animals_page.dart';
import 'package:nasa_space_spps_challenge/project_utilities/colors_utility.dart';
import 'package:nasa_space_spps_challenge/project_utilities/images_utility.dart';

import '../../project_utilities/custom_animated_animal_info_widget.dart';
import '../../project_utilities/custom_app_bar.dart';
import '../../project_utilities/custom_button.dart';
import '../../project_utilities/database_manager/for_animals.dart';
import '../../project_utilities/text_utility.dart';

class NorthernFurSealPage extends StatefulWidget {
  const NorthernFurSealPage({super.key});

  @override
  State<NorthernFurSealPage> createState() => _NorthernFurSealPageState();
}

class _NorthernFurSealPageState extends State<NorthernFurSealPage> {
  List animalsResList = [];

  @override
  void initState() {
    super.initState();
    fetchAnimalsList();
  }

  fetchAnimalsList() async {
    dynamic list = await DatabaseManagerforAnimals().getAnimalsList();
    if (list == null) {
      print(ProjectTexts.errorMessage);
    } else {
      setState(() {
        animalsResList = list;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsUtility.daintree,
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.065),
            child: const CustomAppBar(
              title: AnimalsNames.northernFurSeal,
            )),
        body: ListView(padding: const EdgeInsets.all(30), children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          ColorsUtility.matisse,
                          ColorsUtility.vistaBlue,
                          ColorsUtility.matisse,
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const ImageUtility(
                    imageName: AnimalsImagesPaths.northernFurSeal)),
          ),
          CustomAnimatedAnimalInfoWidget(
            animalsResList: animalsResList,
            animalNum: 10,
            title: AnimalsDatabaseTitles.sName,
          ),
          CustomAnimatedAnimalInfoWidget(
            animalsResList: animalsResList,
            animalNum: 10,
            title: AnimalsDatabaseTitles.habitat,
          ),
          CustomAnimatedAnimalInfoWidget(
            animalsResList: animalsResList,
            animalNum: 10,
            title: AnimalsDatabaseTitles.living,
          ),
          CustomAnimatedAnimalInfoWidget(
            animalsResList: animalsResList,
            animalNum: 10,
            title: AnimalsDatabaseTitles.characteristic,
          ),
          CustomAnimatedAnimalInfoWidget(
            animalsResList: animalsResList,
            animalNum: 10,
            title: AnimalsDatabaseTitles.reason,
          ),
          const CustomButtonwithContainer(),
        ]),
      ),
    );
  }
}
