import 'package:flutter/widgets.dart';

import '../utils/utils.dart';
import 'package:flutter/material.dart';

class AppTypography {
  static final AppTypography _instance = AppTypography.instance();
  factory AppTypography() => _instance;

  AppTypography.instance();

  TextStyle get h4 => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: SizeConfig.instance.scaleText(32),
        letterSpacing: -0.2,
      );
  TextStyle get h5 => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: SizeConfig.instance.scaleText(24),
        letterSpacing: -0.2,
      );
  TextStyle get h6 => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: SizeConfig.instance.scaleText(20),
        letterSpacing: -0.2,
      );
  TextStyle get bodyLargeSB => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: SizeConfig.instance.scaleText(17),
        letterSpacing: 0,
      );
  TextStyle get bodyLargeM => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: SizeConfig.instance.scaleText(17),
        letterSpacing: 0,
      );
  TextStyle get bodyLargeR => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: SizeConfig.instance.scaleText(17),
        letterSpacing: 0,
      );
  TextStyle get bodyMediumSB => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: SizeConfig.instance.scaleText(15),
        letterSpacing: 0,
      );
  TextStyle get bodyMediumM => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: SizeConfig.instance.scaleText(15),
        letterSpacing: 0,
      );
  TextStyle get bodyMediumR => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: SizeConfig.instance.scaleText(15),
        letterSpacing: 0,
      );
  TextStyle get bodySmallSB => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: SizeConfig.instance.scaleText(13),
        letterSpacing: 0,
      );
  TextStyle get bodySmallM => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: SizeConfig.instance.scaleText(13),
        letterSpacing: 0,
      );
  TextStyle get bodySmallR => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: SizeConfig.instance.scaleText(13),
        letterSpacing: 0,
      );
  TextStyle get captionR => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: SizeConfig.instance.scaleText(11),
        letterSpacing: 0,
      );
  TextStyle get captionM => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: SizeConfig.instance.scaleText(11),
        letterSpacing: 0,
      );
}
