import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_utilities/text_utility.dart';

import 'colors_utility.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.content,
      required this.topColor,
      required this.bottomColor});
  final String content;
  final Color topColor;
  final Color bottomColor;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    topColor,
                    bottomColor,
                  ]),
            ),
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              title: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: TextUtility(
                      txt: content,
                      color: ColorsUtility.daintree,
                      size: 18,
                      fw: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
