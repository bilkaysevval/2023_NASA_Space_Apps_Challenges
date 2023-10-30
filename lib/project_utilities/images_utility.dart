import 'package:flutter/material.dart';

class ImageUtility extends StatelessWidget {
  const ImageUtility({super.key, required this.imageName});
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox.fromSize(
        size: Size.fromHeight(MediaQuery.of(context).size.height * 0.25),
        child: Image.asset(
          imageName,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AnimalsImagesPaths {
  static const String blueWhale = "assets/blueWhale.jpg";
  static const String carettaCaretta = "assets/carettaCaretta.jpg";
  static const String coralReefs = "assets/coralReefs.jpg";
  static const String dugong = "assets/dugong.jpg";
  static const String giantMantaRay = "assets/giantMantaRay.jpg";
  static const String greatWhiteShark = "assets/greatWhiteShark.jpg";
  static const String hawaiianMonkSeal = "assets/hawaiianMonkSeal.jpg";
  static const String hawksbillandKempsRidleyTurtles =
      "assets/hawksbillandKemp’sRidleyTurtles.jpg";
  static const String mediterraneanMonkSeal =
      "assets/mediterraneanMonkSeal.jpg";
  static const String northernFurSeal = "assets/northernFurSeal.jpg";
  static const String rightWhale = "assets/rightWhale.jpg";
  static const String southernBluefinTuna = "assets/southernBluefinTuna.jpg";
  static const String spermWhale = "assets/spermWhale.jpg";
  static const String stellerSeaLion = "assets/stellerSeaLion.jpg";
  static const String vaquita = "assets/vaquita.jpg";
  static const String whaleShark = "assets/whaleShark.jpg";
  static const String whiteWhale = "assets/whiteWhale.jpg";
  static const String yangtzeFinlessPorpoise =
      "assets/yangtzeFinlessPorpoise.jpg";
}

class HomePageImagesPaths {
  static const String waterDroplet = "assets/waterDroplet.png";
  static const String dolphinHome = "assets/dolphinHome.png";
  static const String wave = "assets/wave.png";
}
