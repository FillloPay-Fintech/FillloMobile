import 'package:filllo_mobile/views/utils/colours.dart';
import '../utils/utils.dart';
import 'package:filllo_mobile/views/utils/typography.dart';
import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const BlackButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.instance.scaleHeight(18),
          horizontal: SizeConfig.instance.scaleHeight(82),
        ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(80)),
            color: AppColours.dark),
        child: Text(
          text,
          style: AppTypography().bodyLargeSB.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
