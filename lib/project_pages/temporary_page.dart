import 'package:flutter/material.dart';

import '../project_utilities/colors_utility.dart';
import '../project_utilities/images_utility.dart';
import '../project_utilities/text_utility.dart';
import 'home_page.dart';

class TemporaryPage extends StatefulWidget {
  const TemporaryPage({super.key});

  @override
  State<TemporaryPage> createState() => _TemporaryPageState();
}

class _TemporaryPageState extends State<TemporaryPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 300,
                      child: Image.asset(
                        HomePageImagesPaths.wave,
                        fit: BoxFit.fitHeight,
                      ),
                    )
                  ],
                ),
              ),
              const _RowWidget(txt: "What's"),
              const _RowWidget(txt: "Up"),
              const _RowWidget(txt: "With"),
              const _RowWidget(txt: "This"),
              const _RowWidget(txt: "Water?"),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 75),
                child: TextUtility(
                    txt: ProjectTexts.madeForNASAText,
                    color: ColorsUtility.matisse,
                    size: 15,
                    fw: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RowWidget extends StatelessWidget {
  const _RowWidget({
    super.key,
    required this.txt,
  });

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextUtility(
            txt: txt,
            color: ColorsUtility.vistaBlue,
            size: 60,
            fw: FontWeight.w400)
      ],
    );
  }
}
