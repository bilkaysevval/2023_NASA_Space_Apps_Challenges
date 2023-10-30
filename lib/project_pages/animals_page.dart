import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_utilities/images_utility.dart';

import '../project_utilities/colors_utility.dart';
import '../project_utilities/custom_app_bar.dart';
import '../project_utilities/text_utility.dart';
import 'animals_pages/blueWhale.dart';
import 'animals_pages/carettaCaretta.dart';
import 'animals_pages/coralReefs.dart';
import 'animals_pages/dugong.dart';
import 'animals_pages/giantMantaRay.dart';
import 'animals_pages/greatWhiteShark.dart';
import 'animals_pages/hawaiianMonkSeal.dart';
import 'animals_pages/hawksbillandKemp’sRidleyTurtles.dart';
import 'animals_pages/mediterraneanMonkSeal.dart';
import 'animals_pages/northernFurSeal.dart';
import 'animals_pages/rightWhale.dart';
import 'animals_pages/southernBluefinTuna.dart';
import 'animals_pages/spermWhale.dart';
import 'animals_pages/stellerSeaLion.dart';
import 'animals_pages/vaquita.dart';
import 'animals_pages/whaleShark.dart';
import 'animals_pages/whiteWhale.dart';
import 'animals_pages/yangtzeFinlessPorpoise.dart';

class AnimalsPage extends StatefulWidget {
  const AnimalsPage({super.key});

  @override
  State<AnimalsPage> createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height * 0.065),
              child: const CustomAppBar(
                title: ProjectTexts.animalsText,
              )),
          body: ListView(
            // listview separated
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: const [
              ProtectAnimal(
                  animalName: AnimalsNames.blueWhale,
                  imageName: AnimalsImagesPaths.blueWhale,
                  routeName: BlueWhalePage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.carettaCaretta,
                  imageName: AnimalsImagesPaths.carettaCaretta,
                  routeName: CarettaCarettaPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.coralReefs,
                  imageName: AnimalsImagesPaths.coralReefs,
                  routeName: CoralReefsPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.dugong,
                  imageName: AnimalsImagesPaths.dugong,
                  routeName: DugongPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.giantMantaRay,
                  imageName: AnimalsImagesPaths.giantMantaRay,
                  routeName: GiantMantaRayPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.greatWhiteShark,
                  imageName: AnimalsImagesPaths.greatWhiteShark,
                  routeName: GreatWhiteSharkPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.hawaiianMonkSeal,
                  imageName: AnimalsImagesPaths.hawaiianMonkSeal,
                  routeName: HawaiianMonkSeaPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.ridleyTurtles,
                  imageName: AnimalsImagesPaths.hawksbillandKempsRidleyTurtles,
                  routeName: HawksbillKempPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.mediterraneanMonkSeal,
                  imageName: AnimalsImagesPaths.mediterraneanMonkSeal,
                  routeName: MediterraneanMonkSealPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.rightWhale,
                  imageName: AnimalsImagesPaths.rightWhale,
                  routeName: RightWhalePage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.northernFurSeal,
                  imageName: AnimalsImagesPaths.northernFurSeal,
                  routeName: NorthernFurSealPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.bluefinTuna,
                  imageName: AnimalsImagesPaths.southernBluefinTuna,
                  routeName: SouthernBluefinTunaPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.spermWhale,
                  imageName: AnimalsImagesPaths.spermWhale,
                  routeName: SpermWhalePage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.stellerSeaLion,
                  imageName: AnimalsImagesPaths.stellerSeaLion,
                  routeName: StellerSeaLionPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.whaleShark,
                  imageName: AnimalsImagesPaths.whaleShark,
                  routeName: WhaleSharkPage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.whiteWhale,
                  imageName: AnimalsImagesPaths.whiteWhale,
                  routeName: WhiteWhalePage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.yangtzeFinless,
                  imageName: AnimalsImagesPaths.yangtzeFinlessPorpoise,
                  routeName: YangtzeFinlessPorpoisePage()),
              DivideAnimals(),
              ProtectAnimal(
                  animalName: AnimalsNames.vaquita,
                  imageName: AnimalsImagesPaths.vaquita,
                  routeName: VaquitaPage()),
            ],
          )),
    );
  }
}

class DivideAnimals extends StatelessWidget {
  const DivideAnimals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorsUtility.matisse,
      thickness: 1,
    );
  }
}

class ProtectAnimal extends StatelessWidget {
  const ProtectAnimal({
    super.key,
    required this.animalName,
    required this.imageName,
    required this.routeName,
  });

  final String animalName;
  final String imageName;
  final Widget routeName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorsUtility.matisse,
                    ColorsUtility.daintree,
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          margin:
              const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height * 0.035,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextUtility(
                  txt: animalName,
                  color: ColorsUtility.vistaBlue,
                  size: 16,
                  fw: FontWeight.w500),
            ],
          ),
        ),
        ImageUtility(imageName: imageName),
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => routeName,
              )),
          child: Container(
            decoration: const BoxDecoration(
                color: ColorsUtility.vistaBlue,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            margin:
                const EdgeInsets.only(left: 80, right: 80, bottom: 15, top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.04,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextUtility(
                    txt: ProjectTexts.learnAboutButtonText,
                    color: ColorsUtility.daintree,
                    size: 15,
                    fw: FontWeight.w600),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: ColorsUtility.daintree,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AnimalsNames {
  static const String blueWhale = "Blue Whale";
  static const String carettaCaretta = "Caretta Caretta";
  static const String coralReefs = "Coral Reefs";
  static const String dugong = "Dugong";
  static const String giantMantaRay = "Giant Manta Ray";
  static const String greatWhiteShark = "Great White Shark";
  static const String hawaiianMonkSeal = "Hawaiian Monk Seal";
  static const String ridleyTurtles = "Hawksbill and Kemp's Ridley Turtles";
  static const String mediterraneanMonkSeal = "Mediterranean Monk Seal";
  static const String northernFurSeal = "Northern Fur Seal";
  static const String rightWhale = "North Atlantic Right Whale";
  static const String bluefinTuna = "Southern Bluefin Tuna";
  static const String spermWhale = "Sperm Whale";
  static const String stellerSeaLion = "Steller Sea Lion";
  static const String whaleShark = "Whale Shark";
  static const String whiteWhale = "White Whale";
  static const String yangtzeFinless = "Yangtze Finless Porpoise";
  static const String vaquita = "Vaquita";
}
