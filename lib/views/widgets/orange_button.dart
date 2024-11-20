import 'package:filllo_mobile/views/utils/colours.dart';
import '../utils/utils.dart';
import 'package:filllo_mobile/views/utils/typography.dart';
import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const OrangeButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: SizeConfig.scaleHeight(61),
        width: double.maxFinite,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(80)),
          color: AppColours.brightOrange,
        ),
        child: Center(
          child: Text(
            text,
            style: AppTypography.bodyLargeSB.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
