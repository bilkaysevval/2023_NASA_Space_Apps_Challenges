import 'package:flutter/material.dart';
import 'package:nasa_space_spps_challenge/project_utilities/text_utility.dart';

import 'colors_utility.dart';

class CustomCurrentCard extends StatelessWidget {
  const CustomCurrentCard(
      {super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              title: Center(
                child: TextUtility(
                    txt: title,
                    color: ColorsUtility.matisse,
                    size: 20,
                    fw: FontWeight.w700),
              ),
              subtitle: Center(
                child: TextUtility(
                    txt: content,
                    color: ColorsUtility.daintree,
                    size: 17,
                    fw: FontWeight.w400),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
