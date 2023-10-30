import 'package:flutter/material.dart';

import 'custom_card.dart';

class AnimatedInfo extends StatefulWidget {
  const AnimatedInfo(
      {super.key,
      required this.first,
      required this.second,
      required this.topColor,
      required this.bottomColor});

  final String first;
  final String second;
  final Color topColor;
  final Color bottomColor;

  @override
  State<AnimatedInfo> createState() => _AnimatedInfoState();
}

class _AnimatedInfoState extends State<AnimatedInfo> {
  bool _isVisible = false;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _changeVisible();
        },
        child: AnimatedCrossFade(
            firstChild: CustomCard(
              content: widget.first,
              topColor: widget.topColor,
              bottomColor: widget.bottomColor,
            ),
            secondChild: CustomCard(
              content: widget.second,
              topColor: widget.topColor,
              bottomColor: widget.bottomColor,
            ),
            crossFadeState: !_isVisible
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 500)));
  }
}
